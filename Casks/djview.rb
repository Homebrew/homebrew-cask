cask "djview" do
  version "4.12,3"
  sha256 "f846b1488414f2063c1097768c5ca1d8a4dd8889749de03b108ce7c0941b9c3e"

  url "https://downloads.sourceforge.net/djvu/DjVuLibre-3.5.28%2BDjView-#{version.csv.first}-intel64-#{version.csv.second}.dmg",
      verified: "downloads.sourceforge.net/djvu/"
  appcast "https://sourceforge.net/projects/djvu/rss"
  name "DjView"
  homepage "https://djvu.sourceforge.io/"

  app "DjView.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.djvu.djview.sfl*",
    "~/Library/Preferences/org.djvu.DjView.plist",
    "~/Library/Saved Application State/org.djvu.DjView.savedState",
  ]
end
