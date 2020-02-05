cask 'lyx' do
  version '2.3.4'
  sha256 '2c504055f8d03561592740b8c75a4c686a9c0de3cd27521de5f2732ef2e4f4d5'

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
