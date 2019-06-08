cask 'itunes-volume-control' do
  version '1.6.2'
  sha256 '30bb9dd08c199ced8afc3a64217fd9abec592f8c671d8773c2330b195e8791ef'

  # uni-bonn.de/alberti/iTunesVolumeControl was verified as official when first introduced to the cask
  url "http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControl-v#{version}.zip"
  appcast 'https://github.com/alberti42/iTunes-Volume-Control#versions'
  name 'iTunes Volume Control'
  homepage 'https://github.com/alberti42/iTunes-Volume-Control'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'iTunes Volume Control.app'
end
