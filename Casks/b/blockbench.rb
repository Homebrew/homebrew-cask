cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.9.0"
  sha256 arm:   "964b760d5bcc08bc7a178f30fe0d03394aa9ac18c9d90ad904ae267437c223e9",
         intel: "6a7f56bbde1b41a7467b937392d71e709658bfe5cd4ea68d84c3f0ec8ba5a505"

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
