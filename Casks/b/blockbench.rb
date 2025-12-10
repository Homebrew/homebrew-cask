cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "5.0.5"
  sha256 arm:   "b14370b8d2b09054a1ade611f8eb244ed1252f281832e92c342f2e420c3ab1ee",
         intel: "6bc86a56c6534356cc6b6a3bb4639c718c04c8b42ca1c1a84a9c85cf846db114"

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
