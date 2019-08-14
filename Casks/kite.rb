cask 'kite' do
  version '0.20190808.1'
  sha256 '4538268164cbbf13884e43b81a2da2e65c1372c2994d06d0f99f9e36320c67e5'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
