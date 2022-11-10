cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.5.0"
  sha256 arm:   "8d4e0b4d429333aea7b9ef998d7f11e78ddfcbd5e22b4f9e366a4dcf120ce09b",
         intel: "64c5276e87150c537659613123dd782b855e158bb704d0908d771813fd697a41"

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
