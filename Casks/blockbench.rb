cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.7.3"
  sha256 arm:   "abcfcd4c93c84c2e6e2bc3972746a86b2d82de56898c6fbdbb77f61f82b9d0c1",
         intel: "5dbe17aef4b4c4fe331f6a6d1fe73ce326b5983313e1d43fde8ccba2fe292764"

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
