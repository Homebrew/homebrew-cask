cask 'kite' do
  version '0.20190626.0'
  sha256 '9d9cb28b9aa9a27b0713486c8d06cbc88f99096e0de8255724c6baa38f2b8da9'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
