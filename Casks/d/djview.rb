cask "djview" do
  version "4.12,3.5.28,2"
  sha256 "c65460282d7d43c239d262551d415e0cf5873d4b8cbd845e434f2134cdd0a859"

  url "https://downloads.sourceforge.net/djvu/DjVuLibre-#{version.csv.second}%2BDjView-#{version.csv.first}-universal-#{version.csv.third}.dmg"
  name "DjView"
  desc "DjVu viewer and browser plugin"
  homepage "https://djvu.sourceforge.net/"

  livecheck do
    url "https://sourceforge.net/projects/djvu/rss?path=/DjVuLibre_MacOS"
    regex(%r{url=.*?/DjVuLibre[._-](\d+(?:\.\d+)+)%2BDjView[._-](\d+(?:\.\d+)+)[._-]universal(?:-(\d+))?\.dmg}i)
    strategy :sourceforge do |page, regex|
      page.scan(regex).map do |match|
        match[2].present? ? "#{match[1]},#{match[0]},#{match[2]}" : "#{match[1]},#{match[0]}"
      end
    end
  end

  app "DjView.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.djvu.djview.sfl*",
    "~/Library/Preferences/org.djvu.DjView.plist",
    "~/Library/Saved Application State/org.djvu.DjView.savedState",
  ]
end
