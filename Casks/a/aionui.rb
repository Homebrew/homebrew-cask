cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.2.2"
  sha256 arm:   "813dae4972fdc6352567ed201702e79ad67b0332e400a281fcd4a46e36b3b253",
         intel: "d25b1acb6d3bf987257a5336e9f57a673f077215eb9e5109aca481b20070239d"

  url "https://static.aionui.com/releases/#{version}/AionUi-#{version}-mac-#{arch}.dmg"
  name "AionUi"
  desc "Unified GUI for command-line AI agents"
  homepage "https://www.aionui.com/"

  livecheck do
    url "https://static.aionui.com/releases/latest-mac.yml"
    regex(/^version:\s*v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on :macos

  app "AionUi.app"

  zap trash: [
    "~/.aionui",
    "~/Library/Application Support/AionUi",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aionui.app.sfl*",
    "~/Library/Logs/AionUi",
    "~/Library/Preferences/com.aionui.app.plist",
    "~/Library/Saved Application State/com.aionui.app.savedState",
  ]
end
