cask 'latexit' do
  version '2.10.1'
  sha256 '13e8cad21d51cb466c1d48e2f1b03a5dd541928c534fc5022e7d4e4cb2425895'

  url "https://www.chachatelier.fr/latexit/downloads/LaTeXiT-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  appcast 'https://pierre.chachatelier.fr/latexit/downloads/latexit-sparkle-en.rss',
          checkpoint: 'cc4dd3469b0bbc90d0dd61bbacf4a726295c9919c066c622ae6fd3712b1a7667'
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
