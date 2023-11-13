--1.
SELECT Nome, Ano FROM Filmes;

--2
SELECT * FROM Filmes
ORDER BY Ano ASC;

--3
SELECT * FROM Filmes 
WHERE Nome =  'De Volta para o Futuro';

--4
SELECT * FROM Filmes 
WHERE Ano =  1997;

--5
SELECT * FROM Filmes
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao ASC;

--6
SELECT * FROM Filmes
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao ASC;

--7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes GROUP BY (Ano)
ORDER BY Quantidade DESC;

--8
SELECT * From Atores
WHERE Genero = 'M';

--9
SELECT * From Atores
WHERE Genero = 'F';

--10
SELECT Nome, Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.Id
INNER JOIN Generos G ON G.Id = FG.Id; 

--11
SELECT Nome, Genero From Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério';

--12
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdAtor
INNER JOIN Atores A ON A.Id = EF.Id;
