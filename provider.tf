terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }
  # backend "s3" {
  #   bucket         = "backend-bucket-kjh"
  #   key            = "terraform/state-test/terraform.tfstate"
  #   region         = "ap-northeast-2"
  #   dynamodb_table = "terraform-lock"
  # }

    cloud { 
    
    organization = "kjh-devops" 

    workspaces { 
      name = "kjh-devops" 
    } 
  } 

  
}

provider "aws" {
  region = "ap-northeast-2"
}