cask 'kite' do
  version '0.20190821.0'
  sha256 '59007a4b154663c76fa4d8b5945308f43c20e9fd3926b4277b4e097bb647453f'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
