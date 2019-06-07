cask 'itunes-volume-control' do
  version '1.6.1'
  sha256 '80963a03a13c3437e01c833d5a0cf4bd0777f38cc3146e60e3dfb6888400bfcd'

  # uni-bonn.de/alberti/iTunesVolumeControl was verified as official when first introduced to the cask
  url "http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControl-v#{version}.zip"
  appcast 'https://github.com/alberti42/iTunes-Volume-Control#versions'
  name 'iTunes Volume Control'
  homepage 'https://github.com/alberti42/iTunes-Volume-Control'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'iTunes Volume Control.app'
end
