class Steam < Cask
  url 'http://media.steampowered.com/client/installer/steam.dmg'
  homepage 'http://store.steampowered.com/about/'
  version 'latest'
  sha256 :no_check
  link 'Steam.app'
end
