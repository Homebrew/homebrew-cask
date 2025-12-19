cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "5.0.6"
  sha256 arm:   "4385f4111e4d149c17537ef7c331be4e7654106209e91e4a8a269ac281da4b02",
         intel: "65e143e6ed77d05c9cb8defefcf3a163f5ffb656010f3abad24f598a351ea691"

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
