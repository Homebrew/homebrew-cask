cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.8.2"
  sha256 arm:   "1dc2ab1936ed2f406ea2106c38872f682ddab7121836e1c2bf3800d050011dba",
         intel: "953919f0de47e26165e3c1840be99b6668fd470c35508c95dc296d50da40fb6b"

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
