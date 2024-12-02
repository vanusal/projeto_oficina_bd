-- criação do banco de dados para o cenário de E-commerce_OFC
create database OFICINA_BD;

use Officina;

-- criar tabela Cliente Oficina
CREATE TABLE Client_OFC (
		  idClient int auto_increment, 
         Fname varchar(15), 
         Mname char(3), 
         ClientContact varchar(15) not null,
         ClienteOrdem varchar(45), 
         primary key (idClient) 
         );

-- criar tabela Veículo
CREATE TABLE vehicle(
	idVehicle int auto_increment not null,
    vehicleModel varchar (45),
    vehicleMark varchar (45),
    yearOfVehicleManufacture YEAR,
    vehicleColor varchar (45),
    PRIMARY KEY (idVehicle)
);
        
-- criar tabela Equipe
CREATE TABLE Team (
    idTeam int auto_increment,
    teamExecutionAndEvaluation varchar (45),
    idOrderClient int,
    primary key (idTeam)
);


-- criar tabela Ordem de Serviço
CREATE TABLE Service_order(
		idService_order int not null,
        IdClient varchar(45) not null,
        date_of_issue varchar (45) not null,
        value varchar(45),
        Status varchar (45),
        delivery_date date,
        concert varchar (45),
        periodicreview varchar (45),
        primary key (idService_order)
        );


-- criar tablela Service
CREATE TABLE Service (
    idService int auto_increment,
    piece CHAR(15) not null,
    idLabor int not null,
    primary key (idService),
    CONSTRAINT uniqueLaborSupplier UNIQUE (idLabor)
);

-- criar tabela Mão de Obra
CREATE TABLE Labor(
		idLabor int auto_increment ,
        LaborClient varchar(15),
        LaborPayment varchar(45),
        LaborOrderNo char(11) NOT NULL,
        Laborvalue float,
        primary key (IdLabor)

);

-- criar tabela peça
   create table piece(
		idpiece int auto_increment not null,
        quantity varchar (45),
        value varchar (45),
        reference varchar (45), 
        primary key (idpiece)
);  

-- criar tabela produto pedido
   create table request(
		Idrequest int auto_increment,
       Status varchar (45),
        Completion date,
        primary key (Idrequest)

);  

-- criar tabela produto mecânico
   create table mechanic(
	 Idmechanic int not null,
       mechanicName varchar (45),
       Address varchar (45),
	   contact varchar (45),
       email varchar (45),
       code varchar (45),
        primary key (Idmechanic)
        
        );

        