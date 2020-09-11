cask "aws-vault" do
  version "6.0.1"
  sha256 "8fca133f2e5963a46198dd4922cbf22fae73688d8fc1b504cdba3bb5dee182db"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast "https://github.com/99designs/aws-vault/releases.atom"
  name "aws-vault"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
