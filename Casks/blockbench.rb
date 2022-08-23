cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.3.1"
  sha256 arm:   "c121000d3c330bb8080977806f90a746a5c85680957dc736f8389f4fcc0fc145",
         intel: "6a18203516ec827f119a78f637825448a3931fd6caad0d81992087478ac83d9e"

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
