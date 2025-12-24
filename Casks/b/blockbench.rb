cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "5.0.7"
  sha256 arm:   "5a16b24dbc768a826695605487001b8767d48e6020e6affa03362a078be5a6e7",
         intel: "e037fef6d94a6f6859cbcd09ca43a6237f635e7b64aff6ece5bf17e8129f4884"

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
