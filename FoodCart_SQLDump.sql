create database foodcart;
use foodcart;

CREATE TABLE IF NOT EXISTS Food1 (
  food_id varchar(11) NOT NULL DEFAULT '0',
  foodtype varchar(200) NOT NULL DEFAULT '',
  cuisine varchar(55) NOT NULL,
  cost varchar(11) DEFAULT NULL,
  mainingredient varchar(100) NOT NULL DEFAULT '',
  description  varchar(50) NOT NULL DEFAULT '',
  foodname varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (food_id)
);

INSERT INTO Food1 values('1', 'Sandwich', 'American', '$15', 'Chicken', 'Spicy chicken sandwich dipped in hot sauce','Chicken Sanwich');
INSERT INTO Food1 values('2', 'Pizza', 'Italian', '$20', 'Veggies', 'Handmade crust with fresh veggie toppings','Garden Veg Pizza');
INSERT INTO Food1 values('3', 'Salad', 'Continental', '$18', 'Lettuce', 'Seasonal greens dressed with Ranch','Green Salad');
INSERT INTO Food1 values('4', 'Smoothie', 'Mexican', '$15', 'Banana', 'Bananas Blended with milk,honey & Ice','Banana Squash');
INSERT INTO Food1 values('5', 'Biryani', 'Indian', '$20', 'Chicken', 'Authentic South Indian','Dum Biryani');
INSERT INTO Food1 values('6', 'Wings', 'American', '$16', 'Chicken', 'Boneless Chicken wings','Spicy Wings');
INSERT INTO Food1 values('7', 'Noodles', 'Chinese', '$10', 'Egg', 'Noodles dressed with egg and veggies','Chowmein');
INSERT INTO Food1 values('8', 'French Fries', 'French', '$5', 'Potato', 'Fries seasoned with seasalt','Waffle Potato Fries');

SELECT * FROM Food1;
DROP TABLE FOOD1;

CREATE TABLE IF NOT EXISTS Customer1 ( 
 membership_id int(11) NOT NULL auto_increment PRIMARY KEY,
  first_name varchar(25) NOT NULL,
  middle_name varchar(25) DEFAULT NULL,
  last_name varchar(25) NOT NULL,
  address varchar(100) DEFAULT NULL,  
  city varchar(20) DEFAULT NULL,
  state varchar(20) DEFAULT NULL,
  zip_code varchar(15) DEFAULT NULL,
  email varchar(80) NOT NULL,
  password varchar(16) NOT NULL,
  cc_num varchar(10) NOT NULL,
  cc_cvv char(4) NOT NULL
  );
INSERT INTO Customer1 (first_name,middle_name,last_name,address,city,state,zip_code,email,password,cc_num,cc_cvv) values ('vaishnavi','s','sureddi','11005M,GraduateLane','charlotte','NC','28262','vaishanavi.sureddi@gmail.com','vaishnavi','123456789','123');
INSERT INTO Customer1 (first_name,middle_name,last_name,address,city,state,zip_code,email,password,cc_num,cc_cvv) values ('pragna', 'y', 'yelamanchili', '9527B,UTD', 'charlotte', 'NC', '28262', 'pragnayelamanchili@gmail.com', 'pragna', '123456789', '1234');
INSERT INTO Customer1 (first_name,middle_name,last_name,address,city,state,zip_code,email,password,cc_num,cc_cvv) values ('shama', 'zabeen', 'shaik', 'bowenpally', 'hyderabad', 'telangana', '505122', 'skshama18@gmail.com', 'shama', '123456789', '586');

SELECT * FROM food1;

-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS InventoryManager (
  username varchar(20) NOT NULL,
  password varchar(20) NOT NULL,
  PRIMARY KEY (username)
);
INSERT INTO InventoryManager values('admin','123');
INSERT INTO InventoryManager values('ADMIN1','456');


-- --------------------------------------------------------    
Select * from Customer1;

CREATE TABLE IF NOT EXISTS Purchaser (
  membership_id int(11) NOT NULL ,
  food_id int(11) NOT NULL,
  foodtype varchar(200) NOT NULL,
  email varchar(80) DEFAULT NULL,
  cc_num varchar(10) NOT NULL,
  PRIMARY KEY (membership_id,food_id));
  
Select * from Purchaser;