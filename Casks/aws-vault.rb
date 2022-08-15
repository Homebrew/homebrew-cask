cask "aws-vault" do
  arch arm: "arm64", intel: "amd64"

  version "6.6.0"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-#{arch}.dmg"
  on_intel do
    sha256 "eeb7b8dbdba7bb18fcf32e1c422683d5fd444c6c3b5eb41e760bbfcb2036df6c"
  end
  on_arm do
    sha256 "7c624f16a60f6d48900d7aa7f17add991376f1d280e8a5168094e19098797c35"
  end

  name "aws-vault"
  desc "Securely stores and accesses AWS credentials in a development environment"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
