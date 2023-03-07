cask "aws-vault" do
  arch arm: "arm64", intel: "amd64"

  version "7.0.1"
  sha256 arm:   "ea0944db21bbc2bfd05b07fb5fd02ad8e6a2fb7e699e959b39cc14a5680d06c3",
         intel: "6c2b2ff18f6b04378793b0c3100330067677bbee3a65dae7ab4b7ec956ddf36a"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-#{arch}.dmg"
  name "aws-vault"
  desc "Securely stores and accesses AWS credentials in a development environment"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
