cask 'discord' do
  version '0.0.248'
  sha256 'd4bab00d8f804474648c2109e56cf572ebbd342ffee32c03043e78399618717b'

  url "https://cdn.discordapp.com/apps/osx/#{version}/Discord.dmg"
  name 'Discord'
  homepage 'https://discordapp.com/'

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
