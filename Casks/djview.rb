cask "djview" do
  version "4.12,2"
  sha256 "c65460282d7d43c239d262551d415e0cf5873d4b8cbd845e434f2134cdd0a859"

  url "https://downloads.sourceforge.net/djvu/DjVuLibre-3.5.28%2BDjView-#{version.csv.first}-universal-#{version.csv.second}.dmg",
      verified: "downloads.sourceforge.net/djvu/"
  appcast "https://sourceforge.net/projects/djvu/rss"
  name "DjView"
  desc "DjView4 is a new portable DjVu viewer and browser plugin"
  homepage "https://djvu.sourceforge.io/"

  app "DjView.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.djvu.djview.sfl*",
    "~/Library/Preferences/org.djvu.DjView.plist",
    "~/Library/Saved Application State/org.djvu.DjView.savedState",
  ]
end
