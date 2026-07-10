cask "tldraw" do
  version "1.6.0"
  sha256 "fd7e5b3fdcbfc4ed6e56efd3414e05856790af50ac2dab981f2f5d9adce03e41"

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
