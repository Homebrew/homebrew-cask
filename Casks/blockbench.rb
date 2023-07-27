cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.8.0"
  sha256 arm:   "7cd50137f479e9f10072cf78513eb079b47ec3624f76cf9e8043d76293612710",
         intel: "beaaa60bd7d0bb6ce855b4f070d9b92a2385b5a9151676a31fbddbc5b827c137"

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
