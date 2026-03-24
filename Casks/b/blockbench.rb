cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "5.1.0"
  sha256 arm:   "1e9d0d4cb8a237b4e16f7e0f3840984f00ec2c9308d2ecba86c9ca518794741d",
         intel: "30ac2b1c53d08df4d9d45700a5940e86f241345a58dbf5c69bd068c062b2a0ef"

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
