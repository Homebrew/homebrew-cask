cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.1.1"
  sha256 arm:   "cdd3637eba1b6f3096a7a19b96e9a88749f29b2d15e840df191b802ca53ce698",
         intel: "db8afedd7c5138084436d0ca9b93a798019e59af5f19c6b96f0fe4b41861a3ae"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
