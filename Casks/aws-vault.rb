cask "aws-vault" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "6.3.1"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "cc97c451847db718d674a46c3b755e20247403d686b4e4c590c6e902f4e15ba9"
  else
    sha256 "b9bd895cdac1f347b298e6a08c657fd8b70af55f6262fd7310c62f55a3b7509c"
  end

  name "aws-vault"
  desc "Securely stores and accesses AWS credentials in a development environment"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
