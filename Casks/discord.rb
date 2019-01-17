cask 'discord' do
  version '0.0.254'
  sha256 'a5f2f0865e155824f4cfda03c7e2692766b01a1f681f9281dc39ae59ead4baa9'

  url "https://cdn.discordapp.com/apps/osx/#{version}/Discord.dmg"
  appcast 'https://discordapp.com/api/stable/updates?platform=osx'
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
