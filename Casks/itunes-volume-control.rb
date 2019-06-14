cask 'itunes-volume-control' do
  version '1.6.4'
  sha256 '0121c0d2de5d81a12bc0d4fcd144e0118d6f1dcd2f34a578f9811914eb6c0577'

  # uni-bonn.de/alberti/iTunesVolumeControl was verified as official when first introduced to the cask
  url "http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControl-v#{version}.zip"
  appcast 'https://github.com/alberti42/iTunes-Volume-Control#versions'
  name 'iTunes Volume Control'
  homepage 'https://github.com/alberti42/iTunes-Volume-Control'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'iTunes Volume Control.app'
end
