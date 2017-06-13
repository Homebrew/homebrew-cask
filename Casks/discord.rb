cask 'discord' do
  version '0.0.247'
  sha256 '381ff1e790ee788da348fb6cd1cc8f5be99589eac39cbd619ddbe45adbbfebea'

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
