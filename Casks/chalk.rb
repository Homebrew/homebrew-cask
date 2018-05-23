cask 'chalk' do
  version '1.3.2'
  sha256 'f8eb490889e908bae4d8be614295e0a99891da147d0e0c21efaeceb91b91b32b'

  url "https://www.chachatelier.fr/chalk/downloads/Chalk-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  appcast 'https://pierre.chachatelier.fr/chalk/downloads/chalk-sparkle-en.rss',
          checkpoint: '164c4a75f74eabaf6e6af148bbd7f7f77af5466dbeedf1d0f217b20258618847'
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
