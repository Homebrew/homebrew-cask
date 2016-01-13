cask 'itunes-volume-control' do
  version :latest
  sha256 :no_check

  url 'https://github.com/alberti42/iTunes-Volume-Control/blob/master/iTunes%20Volume%20Control.dmg?raw=true'
  appcast 'http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControlCast.xml.php',
          :checkpoint => 'aca51949979301183adac463cd7bf6058e7dd21a27bb2fc4b744fd29e5f94870'
  name 'iTunes Volume Control'
  homepage 'https://github.com/alberti42/iTunes-Volume-Control'
  license :oss

  app 'iTunes Volume Control.app'
end
