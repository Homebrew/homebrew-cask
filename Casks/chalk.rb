cask 'chalk' do
  version '1.2.0'
  sha256 '03a9942e88a60fb01e35264a157157ef7042701518035a09abba8f2b2b825899'

  url "https://www.chachatelier.fr/chalk/downloads/Chalk-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  appcast 'https://pierre.chachatelier.fr/chalk/downloads/chalk-sparkle-en.rss',
          checkpoint: '8f81c39b3ded1e3fa8a05f249205062d88cb1620b1bba0db9436c485aea6242f'
  name 'Chalk'
  homepage 'https://www.chachatelier.fr/chalk/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Chalk.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.chachatelier.pierre.chalk.sfl*',
               '~/Library/Autosave Information/Calculator.chalk',
               '~/Library/Caches/fr.chachatelier.pierre.Chalk',
               '~/Library/Cookies/fr.chachatelier.pierre.Chalk.binarycookies',
               '~/Library/Preferences/fr.chachatelier.pierre.Chalk.plist',
             ]
end
