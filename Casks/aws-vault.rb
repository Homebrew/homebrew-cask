cask "aws-vault" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "6.5.0"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "14ded0a4911b23c95211b32945c4a48e7d4b71d0f0b6466902985636f6b8558d"
  else
    sha256 "d1b506e7a94e68dfca3dc227b465e99f36dcf1efd88cc5a9d28839ea6d47133f"
  end

  name "aws-vault"
  desc "Securely stores and accesses AWS credentials in a development environment"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
