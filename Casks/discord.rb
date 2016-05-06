cask 'discord' do
  version '0.0.239'
  sha256 'a4a262322e98785273b5774ebfb054d89f0e8170be8bde55f086596f4d32191c'

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
