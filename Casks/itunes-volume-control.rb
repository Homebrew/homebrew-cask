cask 'itunes-volume-control' do
  version '1.6.0'
  sha256 '357599dd672eba43fc8368741ada4a5e676cf95b350e1e16fe03b02289ecbb0c'

  # uni-bonn.de/alberti/iTunesVolumeControl was verified as official when first introduced to the cask
  url "http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControl-v#{version}.zip"
  appcast 'https://github.com/alberti42/iTunes-Volume-Control#versions'
  name 'iTunes Volume Control'
  homepage 'https://github.com/alberti42/iTunes-Volume-Control'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'iTunes Volume Control.app'
end
