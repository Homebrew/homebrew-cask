cask 'lyx' do
  version '2.2.2'
  sha256 'eae722f4ef8057d37dcd9c118442922e5d9ba1c7460b28ef8bc7a4b264cf995b'

  url "ftp://ftp.lyx.org/pub/lyx/bin/#{version}/LyX-#{version}+qt5.6.2-x86_64-cocoa.dmg"
  appcast 'https://www.lyx.org/misc/rss/lyx_news_feed.xml',
          checkpoint: '175cd70d08d80abd933253e0753da3ba1fbc6f7512e8f4b673c1b2c7d460682c'
  name 'LyX'
  homepage 'https://www.lyx.org'
  gpg "#{url}.sig",
      key_id: 'de7a44fac7fb382d'

  app 'LyX.app'

  zap delete: [
                "~/Library/Application Support/LyX-#{version.major_minor}",
                "~/Library/Preferences/org.lyx.LyX-#{version.major_minor}.plist",
                '~/Library/Saved Application State/org.lyx.lyx.savedState',
              ]
end
