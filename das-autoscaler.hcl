log_level = "debug"
nomad {
  address = "http://127.0.0.1:4646"
  namespace = "*"
  }
apm "prometheus" {
  driver = "prometheus"
  config = {
  address = "http://127.0.0.1:9090"
  }
}
policy_eval {
  evaluate_after = "5m"
  workers = {
  cluster    = 0
  horizontal = 0
  }
}