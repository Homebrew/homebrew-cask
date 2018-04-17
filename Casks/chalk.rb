cask 'chalk' do
  version '1.3.1'
  sha256 '6b83946890b27631bf08ec3d87d9dd12aeb7f19701eb8483ea88e990ca94aa46'

  url "https://www.chachatelier.fr/chalk/downloads/Chalk-#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  appcast 'https://pierre.chachatelier.fr/chalk/downloads/chalk-sparkle-en.rss',
          checkpoint: 'b17fd895a90434cd08f03c413ba3f39ba1937d1941cf6f50bc6f50d31037e072'
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
