use sakila;

#Select all the actors with the first name ‘Scarlett’
select * from actor;
select * from actor where first_name = 'Scarlett';

#Select all the actors with the last name ‘Johansson’.
select * from actor where last_name = 'Johansson';

#How many films (movies) are available for rent?
select * from film;
select count(distinct film_id) from film;

#How many films have been rented?
select count(film_id) from film where rental_rate > 0 ;

#What is the shortest and longest rental period?
select min(rental_duration), max(rental_duration) from film;

#What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select min(length) as min_duration, max(length) as max_duration from film;

#What's the average movie duration?
select avg(length) from film;

#What's the average movie duration expressed in format (hours, minutes)?
select substring(SEC_TO_TIME(avg(length)*60), 1,5) from film;

#How many movies longer than 3 hours?
select count(film_id) from film where length > 180;

#Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select * from customer;
select *, concat(left(first_name,1), lower(substring(first_name, 2))) as first_name, last_name, lower(email) from customer; 

#What's the length of the longest film title?
select * from film;
select max(length(title)) from film;








