cask "aws-vault" do
  version "6.0.0"
  sha256 "b83a7376d65add5d098998653cfbf32e0b280c249a723c046afbc92f07161128"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast "https://github.com/99designs/aws-vault/releases.atom"
  name "aws-vault"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
