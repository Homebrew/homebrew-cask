cask "lyx" do
  version "2.3.6"
  sha256 "759d5e82af12ca7fa0749d7e4a928e4c2419dab1a54a7b77ea71a48afb127a22"

  url "https://ftp.lip6.fr/pub/lyx/bin/#{version.major_minor_patch}/LyX-#{version}+qt5-x86_64-cocoa.dmg",
      verified: "ftp.lip6.fr/pub/lyx/"
  appcast "https://www.lyx.org/misc/rss/lyx_news_feed.xml"
  name "LyX"
  homepage "https://www.lyx.org/"

  app "LyX.app"

  zap trash: [
    "~/Library/Application Support/LyX-#{version.major_minor}",
    "~/Library/Preferences/org.lyx.LyX-#{version.major_minor}.plist",
    "~/Library/Saved Application State/org.lyx.lyx.savedState",
  ]
end
