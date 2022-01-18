cask "aws-vault" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "6.4.0"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "01161cc1ffb7ecbdf0513c68ba7a3b4e215b29eb8f3a337593282c58633615b8"
  else
    sha256 "49857c8fbb57be0e5f0b4a00bc95be3b199678d1b6d0c12378e51e0a6bd24268"
  end

  name "aws-vault"
  desc "Securely stores and accesses AWS credentials in a development environment"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
