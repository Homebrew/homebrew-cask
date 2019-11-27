cask 'kite' do
  version '0.20191125.0'
  sha256 'ce0c6ee2b6083291e0f4119bb13c22cccb07ec7af1ec382350b4729f83dc3ecb'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
