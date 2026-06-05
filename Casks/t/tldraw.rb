cask "tldraw" do
  version "1.3.0"
  sha256 "40d40cbae2ec7ba058aa275b604d41d7bd918ee5e0d30d54951a1db12334f47c"

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
