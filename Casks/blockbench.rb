cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.7.0"
  sha256 arm:   "0a86576a2eb23caf4c242b010a8d3fd2fc0497b54e4dd71a33907f692ce7a1b4",
         intel: "2bce82bda56948c43acb610268f906115ab699acfa6b446fa01ae29655a5e8ef"

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
