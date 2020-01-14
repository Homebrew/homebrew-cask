cask 'kite' do
  version '0.20200109.0'
  sha256 '8f590a05e12bacf0015a3d2b0b5d81873cbd6ba3e3c7d15d498c74b62226f866'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
