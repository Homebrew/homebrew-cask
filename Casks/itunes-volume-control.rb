cask 'itunes-volume-control' do
  version '1.5.1'
  sha256 '4af853571590f30457b015c2998881d0436643579eb2a67f6e6b3aa30731c200'

  # uni-bonn.de/alberti/iTunesVolumeControl was verified as official when first introduced to the cask
  url "http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControl-v#{version}.zip"
  name 'iTunes Volume Control'
  homepage 'https://github.com/alberti42/iTunes-Volume-Control'
  license :oss

  auto_updates true

  app 'iTunes Volume Control.app'
end
