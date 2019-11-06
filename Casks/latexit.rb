cask 'latexit' do
  version '2.13.4'
  sha256 '11acd8c7925607c4177022ad1d459bcf63e52f4f346ee76ea50f2c3975cbc12c'

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
