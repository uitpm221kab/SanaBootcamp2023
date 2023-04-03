CREATE TABLE categories (
    id INTEGER IDENTITY(1,1)PRIMARY KEY ,
    name TEXT NOT NULL,
    description TEXT
)

CREATE TABLE tasks (
    Id INTEGER IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT,
    created_at TIMESTAMP NOT NULL,
    due_date DATE NOT NULL,
    status TEXT NOT NULL CHECK (status IN ('done', 'undone')),
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO categories (name, description) VALUES 
    ('Робота', 'Задачі, які відносяться до роботи'),
    ('Дім', 'Задачі, які відносяться до дому'),
    ('Навчання', 'Задачі, які відносяться до навчання');

    INSERT INTO tasks (name, description, created_at, due_date, status, category_id) VALUES 
    ('Задача 1', 'Опис задачі 1', '2023-04-03 12:00:00', '2023-04-10', 'undone', 1),
    ('Задача 2', 'Опис задачі 2', '2023-04-03 13:00:00', '2023-04-05', 'done', 2),
    ('Задача 3', 'Опис задачі 3', '2023-04-03 14:00:00', '2023-04-07', 'undone', 3);