cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "5.1.2"
  sha256 arm:   "a37946fe173af24c2b9b3453d2a4a84c6c6cea6ed901a88309a589aab6f21b26",
         intel: "88b4b572da77a11eb9e838c80afa7c512f152cd6129326789acbbaa6763bf175"

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
