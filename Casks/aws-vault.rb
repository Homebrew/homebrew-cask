cask "aws-vault" do
  version "6.3.0"
  sha256 "7af98c76d3afcffd60829716d06986224239d2583108fd7669cb660e215ff98e"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-amd64.dmg"
  appcast "https://github.com/99designs/aws-vault/releases.atom"
  name "aws-vault"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
