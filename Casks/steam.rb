class Steam < Cask
  url 'http://media.steampowered.com/client/installer/steam.dmg'
  homepage 'http://store.steampowered.com/about/'
  version 'latest'
  no_checksum
  link 'Steam.app'
end
