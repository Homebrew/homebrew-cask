cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.61"
  sha256 arm:   "b11dce9dd57c8e225dbea1843fe2acc8c5a01f8f3f339c1201eb68553e9dceaa",
         intel: "8bebf410048ed8d25d712d7693e54d4c6d5b00687642c58acfdfea8fe4725b78"

  url "https://static.aionui.com/releases/#{version}/AionUi-#{version}-mac-#{arch}.dmg"
  name "AionUi"
  desc "Unified GUI for command-line AI agents"
  homepage "https://www.aionui.com/"

  livecheck do
    url "https://static.aionui.com/releases/latest-mac.yml"
    regex(/^version:\s*v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: :big_sur

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
