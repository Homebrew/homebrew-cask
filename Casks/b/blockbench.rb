cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.9.4"
  sha256 arm:   "9f3ba5ce24dcfd5a9fbddefcfe1feb22297bf88490f94df2238dccc54efde0e1",
         intel: "2aca0ccac024334294c38dcdc3cac00ee20413fea444268e174114234edb975a"

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
