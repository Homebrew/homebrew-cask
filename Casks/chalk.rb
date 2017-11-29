cask 'chalk' do
  version '1.1.0'
  sha256 '87319e1fd883ff5d48f9482f3a55a22a4af74e0b25f4d4813543bbb6c05d3992'

  url "https://www.chachatelier.fr/chalk/downloads/Chalk-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  appcast 'https://pierre.chachatelier.fr/chalk/downloads/chalk-sparkle-en.rss',
          checkpoint: '3faa27784608b0a3cec99313ca1a9a7fc67dc8c0e87514ad548212a06a1af592'
  name 'Chalk'
  homepage 'https://www.chachatelier.fr/chalk/'

  app 'Chalk.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.chachatelier.pierre.chalk.sfl*',
               '~/Library/Autosave Information/Calculator.chalk',
               '~/Library/Caches/fr.chachatelier.pierre.Chalk',
               '~/Library/Cookies/fr.chachatelier.pierre.Chalk.binarycookies',
               '~/Library/Preferences/fr.chachatelier.pierre.Chalk.plist',
             ]
end
