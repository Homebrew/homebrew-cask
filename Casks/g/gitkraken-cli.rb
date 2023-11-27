cask "gitkraken-cli" do
  arch arm: "macOS_arm64", intel: "macOS_x86_64"

  version "1.2.1"
  sha256 arm:   "dbb91b9c64428a531d4c6da2dfd3e38858315d7b5add02c79a3e6193f2c085c2",
         intel: "b8c201203b07ef5d225e2624d1ce3aa987775c8111bbb81f70b513fa39e5bae5"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
