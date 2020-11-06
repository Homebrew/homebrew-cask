cask "lyx" do
  version "2.3.5.2"
  sha256 "490433a7bfecc790e2764feb1811320b4cad85682939de5660d7c8ca3ec15dde"

  # ftp.lip6.fr/pub/lyx/ was verified as official when first introduced to the cask
  url "https://ftp.lip6.fr/pub/lyx/bin/#{version.major_minor_patch}/LyX-#{version}+qt5-x86_64-cocoa.dmg"
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
