cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.22"
  sha256 arm:   "4ff84ea2ed84158e1d53a4aa118d615267035f1e96974dc62880f8a8da4ca6e5",
         intel: "162129754c9a52d677ecf4993baee613862d6f679a8be0e2ecb7e1cac4ebb3d3"

  url "https://github.com/iOfficeAI/AionUi/releases/download/v#{version}/AionUi-#{version}-mac-#{arch}.dmg"
  name "AionUi"
  desc "Unified GUI for command-line AI agents"
  homepage "https://github.com/iOfficeAI/AionUi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "AionUi.app"

  zap trash: [
    "~/.aionui",
    "~/Library/Application Support/AionUi",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aionui.app.sfl*",
    "~/Library/Preferences/com.aionui.app.plist",
    "~/Library/Saved Application State/com.aionui.app.savedState",
  ]
end
