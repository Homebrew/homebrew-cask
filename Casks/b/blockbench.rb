cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "5.0.3"
  sha256 arm:   "cff4b5ad10451da1aaf8564e4070ae1f24b0c8492821812ae8924a682ce87d4a",
         intel: "2b4836a4c73760dfa6e057dc00ada7fbd77ff6ad0b7d63966473aa63e2dfdb65"

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
