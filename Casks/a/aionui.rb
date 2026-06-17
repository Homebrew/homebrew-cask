cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.20"
  sha256 arm:   "cfa12e9aa6d43b1518d31d9cabd8475cb0ad6f392bd4cd8faacb45ecec412157",
         intel: "ac7179163d1bab88a429167012f26d08c2e3f56038947bcdcb9dd2b217e06d0b"

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
