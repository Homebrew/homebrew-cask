cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.5.2"
  sha256 arm:   "93d76408fe896895a94c8f9ee03c619f026a448f5079da05d9e951cd1905e5ff",
         intel: "67e297a176bfd8b90d83e8819b539b4b7288635680a89255913e7092e0eb3054"

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
