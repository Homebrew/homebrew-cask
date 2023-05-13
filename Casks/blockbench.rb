cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.7.2"
  sha256 arm:   "4c36f73168a180b9d6da7d5be83dcf28e53540cbe3c70993747c5116897113e1",
         intel: "234d7249f95421e2811abce5f840c8d4b1af16b96385ef8b21e629e29307c00d"

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
