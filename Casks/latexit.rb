cask 'latexit' do
  version '2.14.6'
  sha256 '612e586bf07709a08c1f53cb014596ddea11d5f3f62fa0f4727dc6f22100eb62'

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
