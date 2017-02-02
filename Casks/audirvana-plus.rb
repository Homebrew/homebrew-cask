cask 'audirvana-plus' do
  version '2.6.5'
  sha256 '1715966fcec1fffa9f5fc7d2c50a81fd3a029c9fa3348a071287f134a7920459'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvanaplus#{version.major}_appcast.xml",
          checkpoint: 'bfbd74cd8c17b1c625d396c55b2eecc0a951451d50756399b7c0b47c863ac282'
  name "Audirvana Plus #{version.major}"
  homepage 'https://audirvana.com/'

  app 'Audirvana Plus.app'
end
