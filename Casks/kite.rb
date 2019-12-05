cask 'kite' do
  version '0.20191205.0'
  sha256 '6b9ed6bdf234199cec669956241bb45a4841eb95e1f55bccb54204c9bf193474'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
