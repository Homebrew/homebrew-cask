cask "aws-vault" do
  version "6.3.0"

  appcast "https://github.com/99designs/aws-vault/releases.atom"
  name "aws-vault"
  desc "Vault for securely storing and accessing AWS credentials in development environments"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"

  if Hardware::CPU.intel?
    url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
    sha256 "7af98c76d3afcffd60829716d06986224239d2583108fd7669cb660e215ff98e"
  else
    url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-arm64.dmg"
    sha256 "1e99a2109ad21a30ec0af5004cd3f65c337ac9775a29a3fe1d27c5dd8d0ef703"
  end
end
