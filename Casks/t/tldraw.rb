cask "tldraw" do
  version "1.4.0"
  sha256 "94661c3f1664e965c19f50fb5ed0f2104c228fcd252ec64dd073cde3d23a2de8"

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
