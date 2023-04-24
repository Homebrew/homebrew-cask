cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.7.1"
  sha256 arm:   "3d7b9a2643f164901f6dc6491da1fcc8d5c4b792a5ab47f1b7c9628cd0a6b9ea",
         intel: "84f6d7ce908e6e464a2d82d05c10b7762453460b63d48b86072423a835b59678"

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
