cask 'chalk' do
  version '1.4.0'
  sha256 'bf3f9a558239fb82efd62c13b021bda9b516dc22eed2056646de30d0e1489ee4'

  url "https://www.chachatelier.fr/chalk/downloads/Chalk-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  appcast 'https://pierre.chachatelier.fr/chalk/downloads/chalk-sparkle-en.rss'
  name 'Chalk'
  homepage 'https://www.chachatelier.fr/chalk/'

  auto_updates true

  app 'Chalk.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.chachatelier.pierre.chalk.sfl*',
               '~/Library/Autosave Information/Calculator.chalk',
               '~/Library/Caches/fr.chachatelier.pierre.Chalk',
               '~/Library/Cookies/fr.chachatelier.pierre.Chalk.binarycookies',
               '~/Library/Preferences/fr.chachatelier.pierre.Chalk.plist',
             ]
end
