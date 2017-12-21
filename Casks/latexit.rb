cask 'latexit' do
  version '2.8.1'
  sha256 'ab2ccbadfd57b4f60b7f6e1a81ae1294db901c805676badff9535cc483f9efca'

  url "https://www.chachatelier.fr/latexit/downloads/LaTeXiT-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  appcast 'https://pierre.chachatelier.fr/latexit/downloads/latexit-sparkle-en.rss',
          checkpoint: '6bf7fcfc9469abb3d723d605537a97f3e498c10981e2c526b48e9254bcde53dc'
  name 'LaTeXiT'
  homepage 'https://www.chachatelier.fr/latexit/'

  auto_updates true

  app 'LaTeXiT.app'

  zap trash: [
               '~/Library/Caches/fr.chachatelier.pierre.LaTeXiT',
               '~/Library/Cookies/fr.chachatelier.pierre.LaTeXiT.binarycookies',
               '~/Library/Preferences/fr.chachatelier.pierre.LaTeXiT.plist',
             ]
end
