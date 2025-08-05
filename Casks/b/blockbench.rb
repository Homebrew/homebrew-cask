cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.12.6"
  sha256 arm:   "9da4fbc7b79b6a4a431fb6452c9cb7983a3ce96c6bbd809af84d978c09ef1e00",
         intel: "0a1974560a6401418ba10873f063563c3e50a6e2ac020c01127e061c60f18a21"

  url "https://github.com/JannisX11/blockbench/releases/download/v#{version}/Blockbench_#{arch}_#{version}.dmg",
      verified: "github.com/JannisX11/blockbench/"
  name "Blockbench"
  desc "3D model editor for boxy models and pixel art textures"
  homepage "https://www.blockbench.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Blockbench.app"

  zap trash: [
    "~/Library/Application Support/Blockbench",
    "~/Library/Preferences/blockbench.plist",
    "~/Library/Saved Application State/blockbench.savedState",
  ]
end
