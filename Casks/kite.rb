cask 'kite' do
  version '0.20190912.0'
  sha256 'da0a8be589b019c05a7d48a2b7ba468b196550a5e30738a38f3c5513a7c29b9e'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
