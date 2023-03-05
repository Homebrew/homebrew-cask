cask "aws-vault" do
  arch arm: "arm64", intel: "amd64"

  version "7.0.0"
  sha256 arm:   "6f88bfe8920741023485e52279b964686c1e0795d2817476da83e811fd1f2015",
         intel: "f1bea935c43c21a0f54faec4778be99d9c704981082b72160261a33eec35c844"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-#{arch}.dmg"
  name "aws-vault"
  desc "Securely stores and accesses AWS credentials in a development environment"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
