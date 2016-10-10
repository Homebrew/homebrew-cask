cask 'discord' do
  version '0.0.246'
  sha256 '414bd4387bace461cae1f549b9a786d7fcb5454920b48215303145724f4fd81f'

  url "https://cdn.discordapp.com/apps/osx/#{version}/Discord.dmg"
  name 'Discord'
  homepage 'https://discordapp.com'

  app 'Discord.app'

  zap delete: [
                '~/Library/Application Support/com.hnc.Discord.ShipIt',
                '~/Library/Application Support/discord',
                '~/Library/Saved Application State/com.hnc.Discord.savedState',
                '~/Library/Caches/com.hnc.Discord',
                '~/Library/Caches/discord',
                '~/Library/Preferences/com.hnc.Discord.plist',
              ]
end
