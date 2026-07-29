cask "tldraw" do
  version "1.12.1"
  sha256 "c7c81b2617e954a5e2ec208c24094b174f923b088aced6d2b3504b690bab9a17"

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
