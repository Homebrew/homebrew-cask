cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.6.1"
  sha256 arm:   "004023ed133532f5daab8e2f5d5126f00c00b1135fa54c7dcc932faf96a476c7",
         intel: "9f23cbc098b32bdb4b916965a3a713913b4f3dfaf0a0286d6c46b67b8ad0cd73"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
