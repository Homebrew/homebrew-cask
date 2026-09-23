cask "tldraw" do
  version "1.20.0"
  sha256 "f42869dea0e04a126a1c6114fdb79c448c5a48c30df02aa4715290b067cb6bb3"

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
