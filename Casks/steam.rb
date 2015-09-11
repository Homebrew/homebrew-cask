cask :v1 => 'steam' do
  version :latest
  sha256 :no_check

  url 'http://media.steampowered.com/client/installer/steam.dmg'
  name 'Steam'
  homepage 'http://store.steampowered.com/about/'
  license :gratis

  app 'Steam.app'

  uninstall :launchctl => 'com.valvesoftware.steamclean'

  zap :delete => [
                  '~/Library/Preferences/com.valvesoftware.steam.helper.plist',
                  '~/Library/Application Support/Steam/',
                  '~/Library/Saved Application State/com.valvesoftware.steam.savedState/'
                 ]
end
