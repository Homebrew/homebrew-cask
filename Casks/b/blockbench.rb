cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "5.1.4"
  sha256 arm:   "01ea896e754d6c8b6ed3b6c8073d637b43cd11fbdcffff9ff6267f244a52a7f9",
         intel: "bec4b3a8f8fc844b252a71dbabcf3c2210bcd54e3aa5414d14d48fca66afd46a"

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
