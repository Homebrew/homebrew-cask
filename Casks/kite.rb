cask 'kite' do
  version '0.20170713.0'
  sha256 'e770e310ac049715cb01fb97a16e86f0795e635efccc615c864c0b12a766992e'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '22d3bc2dcbc481e0919d72756be78d05378eb8db7b0414d4a365aa5bf0a251c9'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
