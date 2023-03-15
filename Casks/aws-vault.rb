cask "aws-vault" do
  arch arm: "arm64", intel: "amd64"

  version "7.1.0"
  sha256 arm:   "2ca5f9e95a0c359b4a6237b231963958cb13f05b942130184ab8c8635b97ab6f",
         intel: "c8c6745c636f430c82f5374564b0676b922de64228cc26ed96a6fda05e997b72"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-#{arch}.dmg"
  name "aws-vault"
  desc "Securely stores and accesses AWS credentials in a development environment"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
