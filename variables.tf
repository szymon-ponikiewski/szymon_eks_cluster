# AWS provider config

variable "region" {
  default     = "eu-west-1"
  description = "AWS region"
}

# Resources prefix

variable "resources_prefix" {
  default     = "recruitment-task"
  description = "Resources prefix"
}

# EKS cluster config

locals {
  cluster_name = "${var.resources_prefix}-eks-${random_string.suffix.result}"
}