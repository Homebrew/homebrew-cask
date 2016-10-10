cask 'latexit' do
  version '2.8.1'
  sha256 'ab2ccbadfd57b4f60b7f6e1a81ae1294db901c805676badff9535cc483f9efca'

  url "https://www.chachatelier.fr/latexit/downloads/LaTeXiT-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  appcast 'https://pierre.chachatelier.fr/latexit/downloads/latexit-sparkle-en.rss',
          checkpoint: '90d5bc582ecba92ccf740e0a9793fa8f08441d3c9586eeddcb8baf003cdc023c'
  name 'LaTeXiT'
  homepage 'https://www.chachatelier.fr/latexit'

  app 'LaTeXiT.app'

  zap delete: '~/Library/Preferences/fr.chachatelier.pierre.LaTeXiT.plist'
end
