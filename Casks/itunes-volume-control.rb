cask 'itunes-volume-control' do
  version '1.6.3.1'
  sha256 'e073056ac3f276ee79d69d6010c04a8f2c19ab525378b0d76e6951288d05889d'

  # uni-bonn.de/alberti/iTunesVolumeControl was verified as official when first introduced to the cask
  url "http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControl-v#{version}.zip"
  appcast 'https://github.com/alberti42/iTunes-Volume-Control#versions'
  name 'iTunes Volume Control'
  homepage 'https://github.com/alberti42/iTunes-Volume-Control'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'iTunes Volume Control.app'
end
