cask "blockbench" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.2.4"

  if Hardware::CPU.intel?
    sha256 "7717e118f14ca70d2d3abad644f20d603c9e3ced12fb776ae09c76cdc04a7b03"
  else
    sha256 "e4c8c36211aeccccc6f6ff4d756b9c56dcf1b9facb18bd7f5aafc80302e92295"
  end

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
