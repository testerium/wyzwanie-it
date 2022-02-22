/* Stworzenie tabeli Users */

CREATE TABLE Users (
    Id int IDENTITY(1,1) PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int,
    Country varchar(255)
);

/* Dodanie rekordów do tabeli Users */

INSERT INTO Users
VALUES ('Paluch', 'Filip', 30, 'Italy')

INSERT INTO Users
VALUES ('Krychowski', 'Damian', 31, 'Poland')

INSERT INTO Users
VALUES ('Kowalski', 'Jan', 17, 'Poland')

INSERT INTO Users
VALUES ('Nowak', 'Jan', null, 'Spain')


/* Pobieranie elementów za pomocą komendy SELECT */

SELECT Id, LastName, FirstName, Age 
FROM Users

SELECT * 
FROM Users

SELECT FirstName 
FROM Users



/* 1. Wypisz wszystkich użytkowników którzy mieszkają w Polsce i są pełnoletni */
SELECT *
FROM Users
Where Country = 'Poland' AND Age >= 18

/* 2. Wypisz wszystkich użytkowników którzy mieszkają w Polsce lub we Włoszech */
SELECT *
FROM Users
Where Country = 'Poland' OR Country = 'Italy'

/* 3. Wypisz 'Id' wszystkich użytkowników którzy nie mieszkają w Polsce */

SELECT Id
FROM Users
Where Country != 'Poland'

/* 4. Wypisz najstarszego użytkownika */

SELECT TOP 1 *
FROM Users
ORDER BY Age DESC

/* 5. Wypisz wszystkich użytkowników którzy nie mają przypisanego wieku */

SELECT *
FROM Users
Where Age is null

/* 6. Wypisz użytkowników których imie zaczyna się na literę 'J' */

SELECT *
FROM Users
Where FirstName like('J%')



/* 1. Wypisz sumę wieku wszystkich użytkowników */

SELECT SUM(Age) 
FROM Users

/* 2. Wypisz średnią wieku wszystkich użytkowników */

SELECT AVG(Age)
FROM Users

/* 3. Wypisz sumę wieku użytkowników których imie zaczyna się na 'J' lub nazwisko kończy na 'ski' */

SELECT SUM(Age)
FROM Users
Where FirstName like('J%') OR LastName like('%ski')



/*1. Wypisz jaki jest wiek najstarszego użytkownika mieszkającego w Polsce */

SELECT MAX(Age)
FROM Users
Where Country = 'Poland'

/*2. Wypisz jaki jest najniższy wiek użytkownika który ma w nazwisku literę 'K' */

SELECT MIN(Age)
FROM Users
Where LastName like('%k%')


