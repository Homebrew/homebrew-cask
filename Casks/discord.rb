cask 'discord' do
  version '0.0.249'
  sha256 '3df7bd3480c09f3a1ae2a9820694baa19148ba277aaa4e4f9760b9f4da5395a0'

  url "https://cdn.discordapp.com/apps/osx/#{version}/Discord.dmg"
  appcast 'https://discordapp.com/api/stable/updates?platform=osx',
          checkpoint: 'a90f03024a362020045c56b58f8f32973c0eaafd62133edac0472401f1a0ae27'
  name 'Discord'
  homepage 'https://discordapp.com/'

  auto_updates true

  app 'Discord.app'

  zap trash: [
               '~/Library/Application Support/discord',
               '~/Library/Caches/com.hnc.Discord',
               '~/Library/Caches/com.hnc.Discord.ShipIt',
               '~/Library/Cookies/com.hnc.Discord.binarycookies',
               '~/Library/Preferences/com.hnc.Discord.helper.plist',
               '~/Library/Preferences/com.hnc.Discord.plist',
               '~/Library/Saved Application State/com.hnc.Discord.savedState',
             ]
end
