cask "tldraw" do
  version "1.14.0"
  sha256 "6440083bd8739f102d41e48558fa01ca87dd6e9846ee44b6249744f84400ae23"

  url "https://github.com/tldraw/tldraw-offline/releases/download/v#{version}/tldraw-offline-mac-universal.dmg"
  name "tldraw offline"
  desc "Editor for .tldr files"
  homepage "https://github.com/tldraw/tldraw-offline"

  auto_updates true
  depends_on macos: :monterey

  app "tldraw offline.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tldraw.desktop.sfl*",
    "~/Library/Application Support/tldraw",
    "~/Library/Caches/@tldesktop-updater",
    "~/Library/Caches/com.tldraw.desktop",
    "~/Library/Caches/com.tldraw.desktop.ShipIt",
    "~/Library/HTTPStorages/com.tldraw.desktop",
    "~/Library/Preferences/com.tldraw.desktop.plist",
  ]
end
