cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "5.0.0"
  sha256 arm:   "0fc41ad48608519d8e8d0b17d9117e58024e9dea86873139b03497f63e8b910d",
         intel: "d9df9b01b722b02d7dee92b433b2b31f112ace85c6a6a8c25f83cd3409b4c758"

  url "https://github.com/JannisX11/blockbench/releases/download/v#{version}/Blockbench_#{arch}_#{version}.dmg",
      verified: "github.com/JannisX11/blockbench/"
  name "Blockbench"
  desc "3D model editor for boxy models and pixel art textures"
  homepage "https://www.blockbench.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Blockbench.app"

  zap trash: [
    "~/Library/Application Support/Blockbench",
    "~/Library/Preferences/blockbench.plist",
    "~/Library/Saved Application State/blockbench.savedState",
  ]
end
