cask 'lyx' do
  version '2.3.1-1'
  sha256 '540cf37ae2f35df21dcc92957d5c48c7ea3cbb6cd6aa5ff4169804c7501f2f48'

  url "http://ftp.lyx.org/pub/lyx/bin/#{version.major_minor_patch}/LyX-#{version}+qt5-x86_64-cocoa.dmg"
  appcast 'https://www.lyx.org/misc/rss/lyx_news_feed.xml'
  name 'LyX'
  homepage 'https://www.lyx.org/'

  app 'LyX.app'

  zap trash: [
               "~/Library/Application Support/LyX-#{version.major_minor}",
               "~/Library/Preferences/org.lyx.LyX-#{version.major_minor}.plist",
               '~/Library/Saved Application State/org.lyx.lyx.savedState',
             ]
end
