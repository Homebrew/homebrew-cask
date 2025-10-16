cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "5.0.2"
  sha256 arm:   "f7dc89a5a604ead347896726c5d648176c518f1f8172f40ab5415edd40170dda",
         intel: "d8d9660a6436dd5f7fae5e38dea8641b6af512caab23c07e610661c5f5b461c6"

  url "https://github.com/JannisX11/blockbench/releases/download/v#{version}/Blockbench_#{arch}_#{version}.dmg",
      verified: "github.com/JannisX11/blockbench/"
  name "Blockbench"
  desc "3D model editor for boxy models and pixel art textures"
  homepage "https://www.blockbench.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Blockbench.app"

  zap trash: [
    "~/Library/Application Support/Blockbench",
    "~/Library/Preferences/blockbench.plist",
    "~/Library/Saved Application State/blockbench.savedState",
  ]
end
