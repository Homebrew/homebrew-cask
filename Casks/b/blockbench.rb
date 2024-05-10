cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.10.0"
  sha256 arm:   "d24df537d2b2e6beae0d6652bda51e52a6c33a604a714794e9df43455b5462d0",
         intel: "573f6c2b0fc6ba7296e7349cccfaa110cf763214dea8600571b58e33a381eb1f"

  url "https://github.com/JannisX11/blockbench/releases/download/v#{version}/Blockbench_#{arch}_#{version}.dmg",
      verified: "github.com/JannisX11/blockbench/"
  name "Blockbench"
  desc "3D model editor for boxy models and pixel art textures"
  homepage "https://www.blockbench.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Blockbench.app"

  zap trash: [
    "~/Library/Application Support/Blockbench",
    "~/Library/Preferences/blockbench.plist",
    "~/Library/Saved Application State/blockbench.savedState",
  ]
end
