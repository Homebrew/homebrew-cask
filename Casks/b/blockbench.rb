cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "4.9.2"
  sha256 arm:   "8850e7fdb70429744945cedad25591035fa315bc4695bcbf3cf29bb02547c399",
         intel: "1e28f80e28fdc68d3275c024134d6d242579dc70feec6195ced45f0cf5c4c90f"

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
