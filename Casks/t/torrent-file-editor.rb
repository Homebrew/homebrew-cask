cask "torrent-file-editor" do
  version "1.0.0"
  sha256 "c815da8676388b30db7a2bb5e6691df72519b543eb3f5785ba13f39f658acb14"

  url "https://github.com/torrent-file-editor/torrent-file-editor/releases/download/v#{version}/torrent-file-editor-#{version}.dmg",
      verified: "github.com/torrent-file-editor/torrent-file-editor/"
  name "Torrent File Editor"
  desc "GUI for editing and creating torrent files"
  homepage "https://torrent-file-editor.github.io/"

  depends_on macos: ">= :sierra"

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
