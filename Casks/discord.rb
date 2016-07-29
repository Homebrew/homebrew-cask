cask 'discord' do
  version '0.0.240'
  sha256 'e6d62060d6e4d9ca88513e9ec039d803b8b472b82e5c06424a2a62c6a675932d'

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
