cask 'itunes-volume-control' do
  version '1.6.7'
  sha256 '2a86efdfd9fc1f911cbb94f81294d0e5cf4aa673e5ba6537977c4452a201c759'

  # uni-bonn.de/alberti/iTunesVolumeControl was verified as official when first introduced to the cask
  url "http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControl-v#{version}.zip"
  appcast 'https://github.com/alberti42/iTunes-Volume-Control#versions'
  name 'iTunes Volume Control'
  homepage 'https://github.com/alberti42/iTunes-Volume-Control'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'iTunes Volume Control.app'
end
