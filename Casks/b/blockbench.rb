cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "5.0.1"
  sha256 arm:   "047e1447df7c8607090302aef1110b95f828652a64fc4951569c526ebe0111b7",
         intel: "1e07ee36b74898ca464fd9cf348f4052788d1a0bddcfd0afafce4e4e43b7901e"

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
