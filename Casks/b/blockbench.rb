cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "5.1.5"
  sha256 arm:   "3feef10ed923fd648a9a9f18c7080a7d1807b52b2a0121ae42547408c0379bde",
         intel: "842a66aea91c94e339a0573280fdcf2eb310a7da37908f3ef85adb56dfdd3001"

  url "https://github.com/JannisX11/blockbench/releases/download/v#{version}/Blockbench_#{arch}_#{version}.dmg",
      verified: "github.com/JannisX11/blockbench/"
  name "Blockbench"
  desc "3D model editor for boxy models and pixel art textures"
  homepage "https://www.blockbench.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Blockbench.app"

  zap trash: [
    "~/Library/Application Support/Blockbench",
    "~/Library/Preferences/blockbench.plist",
    "~/Library/Saved Application State/blockbench.savedState",
  ]
end
