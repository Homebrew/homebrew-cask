cask 'lyx' do
  version '2.3.2'
  sha256 'e121a6fdbe3db24d920019295c41bd6d0116b11b4605ad1c90448c625d3e8332'

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
