cask "aws-vault" do
  arch arm: "arm64", intel: "amd64"

  version "7.2.0"
  sha256 arm:   "9887eb8f6c2bd431e814b32b9ec8a6bd394dbeb0c60822d76ed9be3c84ca1cc5",
         intel: "c0642de33329eb6eade70532f0c9eb769d2a1b52dfa56b63196ef51c7dea6445"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-#{arch}.dmg"
  name "AWS Vault"
  desc "Securely stores and accesses AWS credentials in a development environment"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"

  # No zap stanza required
end
