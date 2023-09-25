cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.0.9"
  sha256 arm:   "1829d0d9e77aec567c9c23c6f539ebd63383cb3428f67bc00ab9f674015b99d0",
         intel: "b6ee9bfc4e52d8b18111071b1dc2df6441629716b654614208b78b2f51e63445"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
