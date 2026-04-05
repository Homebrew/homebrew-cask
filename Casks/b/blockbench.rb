cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "5.1.3"
  sha256 arm:   "dd394554fb1079bf8ae76fd3d331f2cfd16b29c4eeee9213e18f8b312efd82ce",
         intel: "11ac02dfe227bbb10a15fb057fe72554c1beabe290ac61b868343e62b0c70b0a"

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
