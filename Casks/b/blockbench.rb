cask "blockbench" do
  arch arm: "arm64", intel: "x64"

  version "5.1.6"
  sha256 arm:   "84d3f632d8c35c40174a05e0b52f035919722cd1b5175228751a09e550a58529",
         intel: "c9d1a31820f0bea0c9187c679c45d81ac62f54aa73b7b5823120d4d859cf71c1"

  url "https://github.com/JannisX11/blockbench/releases/download/v#{version}/Blockbench_#{arch}_#{version}.dmg",
      verified: "github.com/JannisX11/blockbench/"
  name "Blockbench"
  desc "3D model editor for boxy models and pixel art textures"
  homepage "https://www.blockbench.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Blockbench.app"

  zap trash: [
    "~/Library/Application Support/Blockbench",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/blockbench.sfl*",
    "~/Library/Preferences/blockbench.plist",
    "~/Library/Saved Application State/blockbench.savedState",
  ]
end
