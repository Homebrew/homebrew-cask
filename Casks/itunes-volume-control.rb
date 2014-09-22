class ItunesVolumeControl < Cask
  version :latest
  sha256 :no_check

  url 'https://github.com/alberti42/iTunes-Volume-Control/blob/master/iTunes%20Volume%20Control.dmg?raw=true'
  homepage 'https://github.com/alberti42/iTunes-Volume-Control'

  app 'iTunes Volume Control.app'
end
