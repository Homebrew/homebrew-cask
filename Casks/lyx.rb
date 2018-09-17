cask 'lyx' do
  version '2.3.1'
  sha256 '0b823024883a30e23d4952ca2246210643f2c0e42f35ae663747e8f8f9858a6b'

  url "ftp://ftp.lyx.org/pub/lyx/bin/#{version}/LyX-#{version}+qt5-x86_64-cocoa.dmg"
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
