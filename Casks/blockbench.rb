cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.6.1"
  sha256 arm:   "706d54092ff0620a1e30e1c97b1f82ecb95438677f2855ac003f99f5b29cbed5",
         intel: "53262238f3179f01612f5ee286b169e36fb8b2d94991337c6c41db50d4d49225"

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
