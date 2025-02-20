cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.12.3"
  sha256 arm:   "542c4cf023d71dd713bfdf09cefa543495625cf7349180cf0b56f70d1b5005c9",
         intel: "23e9edde194c9282aa97c0a40c12492ac1cb0734d73702068cb1c7bae1251079"

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
