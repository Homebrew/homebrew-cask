cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.5.1"
  sha256 arm:   "865600f0a6562de82650b5e884cc132a217da5f98c5996b79582bcb721dd9bce",
         intel: "7eab16f6ebe19f45665e4a74528131ca5f503a82469355b20f656a9b08b91b69"

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
