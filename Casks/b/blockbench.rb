cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.12.5"
  sha256 arm:   "9d33bb425cc5f693004848ee9e1226cdf901ead4375fe03b028b96c1bd957639",
         intel: "f1315749fdeaffbea4e2eb7f436289e75b058f3d3e7205f35c834996e0453d1c"

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
