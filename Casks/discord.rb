cask 'discord' do
  version '0.0.257'
  sha256 'ab533a1d51391171190991f6f337b2baab69bdc79cf9b8f2c21228881ad41712'

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
