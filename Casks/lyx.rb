cask 'lyx' do
  version '2.2.3'
  sha256 '845766b6e5deda4e5147211fea0e24d3e24dd3cceff014ed1269c942ef9e7883'

  url "ftp://ftp.lyx.org/pub/lyx/bin/#{version}/LyX-#{version}+qt5-x86_64-cocoa.dmg"
  appcast 'https://www.lyx.org/misc/rss/lyx_news_feed.xml',
          checkpoint: '30ba8c1a0446a8071ce2b5ef85cf7933fcf9081097dc566393b3280e67d28df4'
  name 'LyX'
  homepage 'https://www.lyx.org/'
  gpg "#{url}.sig", key_id: 'de7a44fac7fb382d'

  app 'LyX.app'

  zap trash: [
               "~/Library/Application Support/LyX-#{version.major_minor}",
               "~/Library/Preferences/org.lyx.LyX-#{version.major_minor}.plist",
               '~/Library/Saved Application State/org.lyx.lyx.savedState',
             ]
end
