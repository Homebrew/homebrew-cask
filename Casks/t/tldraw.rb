cask "tldraw" do
  version "1.2.3"
  sha256 "e10d8c78a1bdf1539ff68d399bba0e30f80fef021c9a767b7b6b6cfc9886ba2f"

  url "https://github.com/tldraw/tldraw-desktop/releases/download/v#{version}/tldraw-#{version}-universal.dmg"
  name "tldraw desktop"
  desc "Editor for .tldr files"
  homepage "https://github.com/tldraw/tldraw-desktop"

  auto_updates true
  depends_on macos: :monterey

  app "tldraw.app"

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
