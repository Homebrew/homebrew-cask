cask "tldraw" do
  version "1.12.0"
  sha256 "fef5d7d603a72be2aeda2f116560538592c41a9c155fe78af6232aef150403ce"

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
