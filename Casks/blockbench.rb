cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.6.0"
  sha256 arm:   "00c36bc7b4f2f5f8ada4b9e5e74ebd6d9f7c0a255155d7c51bc49d2e1d2c263d",
         intel: "05b160a9ec06f5f9bf707ceaec9fd33a5d70e8f26105a161c416a9b72d105b0a"

  url "https://github.com/JannisX11/blockbench/releases/download/v#{version}/Blockbench_#{arch}_#{version}.dmg",
      verified: "github.com/JannisX11/blockbench/"
  name "Blockbench"
  desc "3D model editor for boxy models and pixel art textures"
  homepage "https://www.blockbench.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Blockbench.app"

  zap trash: [
    "~/Library/Application Support/Blockbench",
    "~/Library/Preferences/blockbench.plist",
    "~/Library/Saved Application State/blockbench.savedState",
  ]
end
