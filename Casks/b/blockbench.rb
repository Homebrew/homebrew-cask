cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.8.1"
  sha256 arm:   "844e9865cb7e5ab7657c0da2e42079d9a2e9184101f4052d592ef9861d08a822",
         intel: "2ab7481a987d7d7c44578cc1b853c231f6c63add497c2aa0a2aab1a2b81e0342"

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
