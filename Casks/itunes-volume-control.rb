cask :v1 => 'itunes-volume-control' do
  version :latest
  sha256 :no_check

  url 'https://github.com/alberti42/iTunes-Volume-Control/blob/master/iTunes%20Volume%20Control.dmg?raw=true'
  name 'iTunes Volume Control'
  appcast 'http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControlCast.xml.php',
          :sha256 => 'fe941e41722f19122558cfad9f0bae80cb1fdaa3e88292c56bfb5d945434d86f'
  homepage 'https://github.com/alberti42/iTunes-Volume-Control'
  license :oss

  app 'iTunes Volume Control.app'
end
