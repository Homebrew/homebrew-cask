cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.11.0"
  sha256 arm:   "5d373cd3e428dca36d3511d655857bea92656065e928be076691135fb42e3537",
         intel: "6a66024e18ebd12e4454c73ca84d2bdeb7b75a2faddc6811aaacb03cddc5bece"

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
