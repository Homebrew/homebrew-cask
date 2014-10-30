class Steam < Cask
  version :latest
  sha256 :no_check

  url 'http://media.steampowered.com/client/installer/steam.dmg'
  homepage 'http://store.steampowered.com/about/'
  license :unknown

  app 'Steam.app'
end
