cask 'discord' do
  version '0.0.238'
  sha256 '47315dc89ab996d868eda0cdbba642fd7b3bb6497a4e441808ee1e57c59d481a'

  url "https://cdn.discordapp.com/apps/osx/#{version}/Discord.dmg"
  name 'Discord'
  homepage 'https://discordapp.com'
  license :gratis

  app 'Discord.app'

  zap delete: [
                '~/Library/Application Support/com.hnc.Discord.ShipIt',
                '~/Library/Saved Application State/com.hnc.Discord.savedState',
                '~/Library/Caches/com.hnc.Discord',
                '~/Library/Preferences/com.hnc.Discord.plist',
              ]
end
