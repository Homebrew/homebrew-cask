cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.8.3"
  sha256 arm:   "175efa68335a66c910571eb8ae33ea6c7a9e64db1541e9fa18a595ea4b95d7ab",
         intel: "f04e9171bdebb6431afadba4fd878584a4be5afd9788db6336e7f6dd413b90f5"

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
