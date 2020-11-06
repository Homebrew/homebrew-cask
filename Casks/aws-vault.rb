cask "aws-vault" do
  version "6.2.0"
  sha256 "c6364250172b8fe0a8b5b90d9cbbb69283fe9b97a1e0ddf53468e85fd8af8bd3"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast "https://github.com/99designs/aws-vault/releases.atom"
  name "aws-vault"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
