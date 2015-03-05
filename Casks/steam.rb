cask :v1 => 'steam' do
  version :latest
  sha256 :no_check

  url 'http://media.steampowered.com/client/installer/steam.dmg'
  homepage 'http://store.steampowered.com/about/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Steam.app'

  uninstall :launchctl => 'com.valvesoftware.steamclean'
end
