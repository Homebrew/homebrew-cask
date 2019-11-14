cask 'kite' do
  version '0.20191113.0'
  sha256 '3d8920e40eadd1fa6b6f561235e4a8244d0249caf10c9a74139c8e0437688dfd'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
