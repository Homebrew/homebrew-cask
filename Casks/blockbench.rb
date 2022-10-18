cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.4.2"
  sha256 arm:   "31b59748e6a81d1d236af48d44fed58e9b001d29f2972b9e12ad99e47ed8f4c2",
         intel: "cb29c7b333e034be25db3101b12b248645919982b7cdee44c41794fb9c838f91"

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
