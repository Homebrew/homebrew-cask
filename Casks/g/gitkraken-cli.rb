cask "gitkraken-cli" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "3.1.42"
  sha256 arm:   "a0dfd41e12309e658f05f6314d3b500e8b2dc81a1b39ee4976c90785aa35ec83",
         intel: "397f14b11b83f76fd21ccbbf45533459d20786cf7b6aa224e9c1c2d9d7ce94bf"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
