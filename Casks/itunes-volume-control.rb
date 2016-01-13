cask 'itunes-volume-control' do
  version :latest
  sha256 :no_check

  url 'https://github.com/alberti42/iTunes-Volume-Control/blob/master/iTunes%20Volume%20Control.dmg?raw=true'
  appcast 'http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControlCast.xml.php',
          :sha256 => '8a876c7295f97d45a4bdff92a261bbe4518502694d9e08da7012a58407b66dd4'
  name 'iTunes Volume Control'
  homepage 'https://github.com/alberti42/iTunes-Volume-Control'
  license :oss

  app 'iTunes Volume Control.app'
end
