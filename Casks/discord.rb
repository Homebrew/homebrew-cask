cask 'discord' do
  version '0.0.248'
  sha256 'd4bab00d8f804474648c2109e56cf572ebbd342ffee32c03043e78399618717b'

  url "https://cdn.discordapp.com/apps/osx/#{version}/Discord.dmg"
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
