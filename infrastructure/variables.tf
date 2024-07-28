variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "eu-west-1"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "my-model-storage-bucket"
}

variable "rds_allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = number
  default     = 20
}

variable "rds_engine_version" {
  description = "The database engine version"
  type        = string
  default     = "16.3"
}

variable "rds_instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "rds_db_name" {
  description = "The name of the database"
  type        = string
  default     = "mydb"
}

variable "rds_username" {
  description = "The username for the database"
  type        = string
  default     = "admin"
}

variable "rds_password" {
  description = "The password for the database"
  type        = string
  default     = "admin123"
}

variable "rds_vpc_security_group_ids" {
  description = "The VPC security group IDs"
  type        = string
  default     = ""
}

variable "rds_db_subnet_group_name" {
  description = "The subnet group name for the database"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
}

variable "blue_green_update_enabled" {
  description = "Enable low-downtime updates with blue/green deployment"
  type        = bool
  default     = false
}