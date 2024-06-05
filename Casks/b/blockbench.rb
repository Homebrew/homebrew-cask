cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.10.3"
  sha256 arm:   "172acfae68a389aa01c506f019a0c2bcf968d2b777f7d073a6b1dd5cac9f07f4",
         intel: "abf7fa2a20208e86b3196380fed1473ae56334408c62fb0440ca3b63184705c0"

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
