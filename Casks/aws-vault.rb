cask "aws-vault" do
  arch arm: "arm64", intel: "amd64"

  version "7.1.1"
  sha256 arm:   "d5028c4366f15eeba01f33de7343814def03c87e5e705d6056701f7f72d2ccc4",
         intel: "7d3e4955bb47490704e463d94df31a015146bd8a275324bed517ab7d87597810"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-#{arch}.dmg"
  name "aws-vault"
  desc "Securely stores and accesses AWS credentials in a development environment"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
