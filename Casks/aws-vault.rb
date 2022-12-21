cask "aws-vault" do
  arch arm: "arm64", intel: "amd64"

  version "6.6.1"
  sha256 arm:   "fbbc0f3fabc9fc62c84e62b2a1a97efe4eaed7626963130b85849bb85785d5ff",
         intel: "682f163a77b7f6d4bed578fc541cead49486f71b237ef2b013960befa44fd654"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-#{arch}.dmg"
  name "aws-vault"
  desc "Securely stores and accesses AWS credentials in a development environment"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
