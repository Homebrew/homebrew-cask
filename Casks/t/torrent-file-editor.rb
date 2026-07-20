cask "torrent-file-editor" do
  version "1.0.3"
  sha256 "f264b9baf68e685001fea69b8e383725a69d4f077dcdaed8c0cefd920abbc355"

  url "https://github.com/torrent-file-editor/torrent-file-editor/releases/download/v#{version}/torrent-file-editor-#{version}.dmg",
      verified: "github.com/torrent-file-editor/torrent-file-editor/"
  name "Torrent File Editor"
  desc "GUI for editing and creating torrent files"
  homepage "https://torrent-file-editor.github.io/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "Torrent File Editor.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.sourceforge.torrent-file-editor.sfl*",
    "~/Library/Caches/net.sourceforge.torrent-file-editor",
    "~/Library/Cookies/net.sourceforge.torrent-file-editor.binarycookies",
    "~/Library/Preferences/net.sourceforge.torrent-file-editor.plist",
    "~/Library/Saved Application State/net.sourceforge.torrent-file-editor.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
