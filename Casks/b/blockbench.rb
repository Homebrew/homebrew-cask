cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "5.1.1"
  sha256 arm:   "40f79b4a26424e4be77c92e316c76ffae83aa5c36d497ece348a656f76ba2ac3",
         intel: "3dbf2da3e7eff184a8194a66576e63422b199ac710b417a3caf9721047806524"

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
