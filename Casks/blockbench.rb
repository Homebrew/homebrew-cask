cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.6.4"
  sha256 arm:   "5d2931630038980f7f320242e208a73398310e6a4d2467219b724b25b3c0cc89",
         intel: "773a13738d9f7dfbc129d41786616587889e563c99ab04b4d53c675290dcdf38"

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
