cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.7.4"
  sha256 arm:   "431d721bda374113a90a73b449d36a991c2fa92d7cc9129684487a4377467a37",
         intel: "a41523df12301c07f53329d48a66621543b63b563da1db9601e659c1799706a0"

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
