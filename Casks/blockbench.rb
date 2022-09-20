cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.4.1"
  sha256 arm:   "21da4dad72b519966d55b0b04a9d3ea98f02365cb049ee8a20aeed00d0737286",
         intel: "c702679874669acb7b0a8dd590ab058e2000d0b46b40d332732cab3d14bd3de1"

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
