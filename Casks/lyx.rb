cask "lyx" do
  version "2.3.6.1"
  sha256 "fd881be1cfd25349e09e5e8bb234d7ea66f9eab5da2d9dba80a2fdb23281937b"

  url "https://ftp.lip6.fr/pub/lyx/bin/#{version.major_minor_patch}/LyX-#{version}+qt5-12-x86_64-cocoa.dmg",
      verified: "ftp.lip6.fr/pub/lyx/"
  name "LyX"
  homepage "https://www.lyx.org/"

  livecheck do
    url "https://www.lyx.org/misc/rss/lyx_news_feed.xml"
    regex(/LyX (\d+(?:\.\d+)*)/i)
  end

  app "LyX.app"

  zap trash: [
    "~/Library/Application Support/LyX-#{version.major_minor}",
    "~/Library/Preferences/org.lyx.LyX-#{version.major_minor}.plist",
    "~/Library/Saved Application State/org.lyx.lyx.savedState",
  ]
end
