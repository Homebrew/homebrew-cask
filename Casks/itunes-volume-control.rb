cask 'itunes-volume-control' do
  version '1.5.2'
  sha256 '741cd1503c9ac4f3ac4a6a50c24b53a5d4ab9a327b9b750caedb2a99a908284f'

  # uni-bonn.de/alberti/iTunesVolumeControl was verified as official when first introduced to the cask
  url "http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControl-v#{version}.zip"
  appcast 'http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControlCast.xml.php'
  name 'iTunes Volume Control'
  homepage 'https://github.com/alberti42/iTunes-Volume-Control'

  auto_updates true

  app 'iTunes Volume Control.app'
end
