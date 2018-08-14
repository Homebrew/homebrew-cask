cask 'lyx' do
  version '2.3.0'
  sha256 '45a8da0cd9ccdc4f3764864048c890e9d234ef559a5a4db89cce93bbaaee46da'

  url "ftp://ftp.lyx.org/pub/lyx/bin/#{version}/LyX-#{version}+qt5-x86_64-cocoa.dmg"
  appcast 'https://www.lyx.org/misc/rss/lyx_news_feed.xml'
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
