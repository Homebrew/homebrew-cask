cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.4.0"
  sha256 arm:   "6323c820a3613f1cc2feab4e8553e9919236794585ff1913f2c157456a1219ee",
         intel: "e62f9d4716b367e843b07ffa06cd42232f58a1e1d899bc0ca0ea0735701b05c9"

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
