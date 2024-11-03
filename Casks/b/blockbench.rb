cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.11.2"
  sha256 arm:   "5ce158ddf62ab17e060f3cd9061fff2ebd445d8de311776beac94a37c2fbeddb",
         intel: "90bf713441436fc7a01a62f716bc08371b6d48a16fd135bb49028c641529e60e"

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
