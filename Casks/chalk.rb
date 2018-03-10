cask 'chalk' do
  version '1.3.0'
  sha256 '8c87ec406790274a3422facc995819e9c1b95a76c4e848fa243f0d7eabcd15f5'

  url "https://www.chachatelier.fr/chalk/downloads/Chalk-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  appcast 'https://pierre.chachatelier.fr/chalk/downloads/chalk-sparkle-en.rss',
          checkpoint: 'c802affdbe9e90f1a8b2cb529e822780440b89b6596de18a90c8bc3a01cbe109'
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
