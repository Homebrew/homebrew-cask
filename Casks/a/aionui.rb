cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.9.4"
  sha256 arm:   "01a8f5bcbace9e6dba9131f39ea5bf525b46172a427c68fae7e1d1eea6ae7a09",
         intel: "1fad91a4a53028486066c8e0fc844697ae6cac2d8cbec84cd3ca935c68a91fb4"

  url "https://github.com/iOfficeAI/AionUi/releases/download/v#{version}/AionUi-#{version}-mac-#{arch}.dmg"
  name "AionUi"
  desc "Unified GUI for command-line AI agents"
  homepage "https://github.com/iOfficeAI/AionUi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "AionUi.app"

  zap trash: [
    "~/.aionui",
    "~/Library/Application Support/AionUi",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aionui.app.sfl*",
    "~/Library/Preferences/com.aionui.app.plist",
    "~/Library/Saved Application State/com.aionui.app.savedState",
  ]
end
