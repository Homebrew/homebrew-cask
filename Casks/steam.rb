class Steam < Cask
  url 'http://media.steampowered.com/client/installer/steam.dmg'
  homepage 'http://store.steampowered.com/about/'
  version 'stable'
  no_checksum

  link :app, 'Steam.app'
end
