cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.9.3"
  sha256 arm:   "e5446c3454b7dffd2c5110fcd8848091f1e061dd67870db2d0cdde73643f5f3c",
         intel: "58bb36f3aed9b18e4344fbe8a1584cedd75937d491ed3f3fdea21f5333e52eb0"

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
