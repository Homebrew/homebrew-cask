cask 'latexit' do
  version '2.14.8'
  sha256 'eead7d0145b6dffb298898a2495d99537bafec6c0aff3ce9fdef69d8ea893fd5'

  url "https://www.chachatelier.fr/latexit/downloads/LaTeXiT-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  appcast 'https://pierre.chachatelier.fr/latexit/downloads/latexit-sparkle-en.rss'
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
