cask 'discord' do
  version '0.0.256'
  sha256 '591058c522fea899513691a1c082212ecdaff65371f9c31b0885947488b4191a'

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
