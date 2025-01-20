cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.12.2"
  sha256 arm:   "b1678886d5d19d8e4295537e4e2ba5b84dd87309e2b0baac9bd4d6f6a361a752",
         intel: "d0f940d4b5dc75d177ef15f0d7936d3e5e2b7a8dcdad5e29844fdddab164fa4f"

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
