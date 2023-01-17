cask "aws-vault" do
  arch arm: "arm64", intel: "amd64"

  version "6.6.2"
  sha256 arm:   "e856db45ee33819a26709662aaa32a78fdda4986323ac6ed25ac2d97b5e424cf",
         intel: "0b2600c6b8440772fd7cfe10251147eaf342f558365e6c82bbbabd03bfc6a3a9"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-#{arch}.dmg"
  name "aws-vault"
  desc "Securely stores and accesses AWS credentials in a development environment"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
