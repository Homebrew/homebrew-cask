cask 'lyx' do
  version '2.2.3'
  sha256 '845766b6e5deda4e5147211fea0e24d3e24dd3cceff014ed1269c942ef9e7883'

  # mirror.ufs.ac.za/applications/lyx was verified as official when first introduced to the cask
  url 'http://mirror.ufs.ac.za/applications/lyx/bin/2.2.3/LyX-2.2.3+qt5-x86_64-cocoa.dmg'
  appcast 'https://www.lyx.org/misc/rss/lyx_news_feed.xml',
          checkpoint: 'd3ec643d18ca7c882289d3679b0f1d0a391b295c3be70e55287bccb3c5a94aa0'
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
