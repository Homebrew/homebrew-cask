cask 'steam' do
  version :latest
  sha256 :no_check

  url 'http://media.steampowered.com/client/installer/steam.dmg'
  name 'Steam'
  homepage 'http://store.steampowered.com/about/'
  license :gratis

  auto_updates true

  app 'Steam.app'

  uninstall quit:      [
                         'com.valvesoftware.steam',
                         'com.valvesoftware.steam.helper',
                         'com.valvesoftware.steam.helper.EH',
                       ],
            launchctl: [
                         'com.valvesoftware.steamclean',
                         'com.valvesoftware.steam.ipctool',
                       ]

  zap delete: [
                '~/Library/LaunchAgents/com.valvesoftware.steamclean.plist',
                '~/Library/Preferences/com.valvesoftware.steam.helper.plist',
                '~/Library/Application Support/Steam/',
                '~/Library/Saved Application State/com.valvesoftware.steam.savedState/',
              ]
end
