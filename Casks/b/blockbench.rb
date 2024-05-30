cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.10.2"
  sha256 arm:   "753ff273542107a8f3e0ed272d2237e71e2aea47efc3492476377c6d9e7d6d5b",
         intel: "e15b1a27a948f93d79019ade139dc0430a4b2d7fbcf36b6666d7f727da38d165"

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
