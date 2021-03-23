cask "aws-vault" do
  version "6.3.0"

  if Hardware::CPU.intel?
    sha256 "7af98c76d3afcffd60829716d06986224239d2583108fd7669cb660e215ff98e"

    url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  else
    sha256 "1e99a2109ad21a30ec0af5004cd3f65c337ac9775a29a3fe1d27c5dd8d0ef703"

    url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-arm64.dmg"
  end

  appcast "https://github.com/99designs/aws-vault/releases.atom"
  name "aws-vault"
  desc "Securely stores and accesses AWS credentials in a development environment"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
