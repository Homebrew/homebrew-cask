cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.6.5"
  sha256 arm:   "cbc11c9ddc71461ee78701b36f5868cfb74561da660967dbe8a709022bdba9e3",
         intel: "5ba148e26ffda14c1582998254b29a8c1b2cc0873520e6f70656d17ecd163207"

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
