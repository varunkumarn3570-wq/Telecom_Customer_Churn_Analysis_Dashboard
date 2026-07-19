create database telecom_customer;
use telecom_customer;
create table telecom(
State varchar(50) not null,
Account_Length int not null,
Area_code int not null,
International_plan varchar(50) not null,
Voice_mail_plan varchar(50) not null,
Number_vmail_messages int not null,
Total_day_minutes int not null,
Total_day_calls int not null,
Total_day_charge int not null,
Total_eve_minutes int not null,
Total_eve_calls int not null,
Total_eve_charge int not null,
Total_night_minutes int not null,
Total_night_calls int not null,
Total_night_charge int not null,
Total_intl_minutes int not null,
Total_intl_calls int not null,
Total_intl_charge int not null,
Customer_service_calls int not null,
Churn varchar(50) not null);
desc telecom;
select*from telecom;
show tables;

#Business Problems
-- 1.How many customers total are there?
select count(*) from telecom;

-- 2.How many customer have churned?
select Churn,count(*) from telecom group by Churn;

-- 3. Which state have the highest custoomer segment?
select State,count(*) as highest_count from telecom group by State order by highest_count desc;

-- 4.How many customers have international plan?
select International_plan,count(*) from telecom group by International_plan;

-- 5. How many customers have voice mail plans?
select Voice_mail_plan,count(*) from telecom group by Voice_mail_plan;

-- 6.What is the average account length of customer?
select avg(Account_length) from telecom;




