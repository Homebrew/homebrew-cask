cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.11.1"
  sha256 arm:   "28d75f44d5e0a26f72764ff1fb65d1f61a18ad2bddacb82da854c6c4507f3d0b",
         intel: "c9d65ff04c4c5d1cc722722976cde232ba8c2a3cff0a198ac58c8dc3749de92e"

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
