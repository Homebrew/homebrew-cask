cask "aws-vault" do
  version "6.1.0"
  sha256 "a974eb3149f02532af23f532deb40ee3380269eb6d74e2d2e8447b37806da397"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast "https://github.com/99designs/aws-vault/releases.atom"
  name "aws-vault"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
