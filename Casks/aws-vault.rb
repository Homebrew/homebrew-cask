cask "aws-vault" do
  arch arm: "arm64", intel: "amd64"

  version "7.1.2"
  sha256 arm:   "0cd47fc6b40a9dece3310fa4bb4d3859fdad454330757cc242cca0c1db4d5e05",
         intel: "2fea9b8fc03df247cec000dcc161fc900bfa4e0a250cde47630def46b3beff07"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-#{arch}.dmg"
  name "aws-vault"
  desc "Securely stores and accesses AWS credentials in a development environment"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
