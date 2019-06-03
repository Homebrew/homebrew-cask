cask 'itunes-volume-control' do
  version '1.5.3'
  sha256 '82e570350fb97e6ebb4f5573ac9b0059ea9b789b8f3836b78edc7f245dad17fe'

  # uni-bonn.de/alberti/iTunesVolumeControl was verified as official when first introduced to the cask
  url "http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControl-v#{version}.zip"
  appcast 'http://quantum-technologies.iap.uni-bonn.de/alberti/iTunesVolumeControl/iTunesVolumeControlCast.xml.php'
  name 'iTunes Volume Control'
  homepage 'https://github.com/alberti42/iTunes-Volume-Control'

  auto_updates true

  app 'iTunes Volume Control.app'
end
