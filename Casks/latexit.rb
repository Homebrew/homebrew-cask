cask 'latexit' do
  version '2.9.0'
  sha256 'ce6b9945fc9afb8fe820552f862ecc3ed0a69b15cda9c62f7780b219333f9b23'

  url "https://www.chachatelier.fr/latexit/downloads/LaTeXiT-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  appcast 'https://pierre.chachatelier.fr/latexit/downloads/latexit-sparkle-en.rss',
          checkpoint: '946ab8e24300a0dbbb909d1253f395ca01727e9da797b97c05c73a8fc4212d52'
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
