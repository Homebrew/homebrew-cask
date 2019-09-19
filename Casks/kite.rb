cask 'kite' do
  version '0.20190918.0'
  sha256 'addab224ec9396973f2de2cdcc505526c8bfc95b21499086decb53f61a328653'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
