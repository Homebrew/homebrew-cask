cask 'lyx' do
  version '2.3.5.1'
  sha256 'b4186192cec8f84f5140f88d42d49b1b03f31f58e534a0b575fa4d039e56eea2'

  # ftp.lip6.fr/pub/lyx/ was verified as official when first introduced to the cask
  url "https://ftp.lip6.fr/pub/lyx/bin/#{version.major_minor_patch}/LyX-#{version}+qt5-x86_64-cocoa.dmg"
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
