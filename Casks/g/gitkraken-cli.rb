cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.0.6"
  sha256 arm:   "36813d307255db5e88e89bb2d91fdbab97b18e0352e0fec724fccdb018fee7b6",
         intel: "50a1595125e67724de571a6deb04c1404437352e28525750486cbc3cacf5cf96"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk_#{version}_#{arch}/gk"

  zap trash: "~/.gitkraken"
end
