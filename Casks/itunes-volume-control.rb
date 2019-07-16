cask 'itunes-volume-control' do
  version '1.6.6'
  sha256 '6256c424b8c815ba1d9f50c91869c8a161db202ff0d4fc6573d9d896da5b3a65'

  # uni-bonn.de/alberti/iTunesVolumeControl was verified as official when first introduced to the cask
  url "http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControl-v#{version}.zip"
  appcast 'https://github.com/alberti42/iTunes-Volume-Control#versions'
  name 'iTunes Volume Control'
  homepage 'https://github.com/alberti42/iTunes-Volume-Control'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'iTunes Volume Control.app'
end
