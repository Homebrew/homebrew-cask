cask 'kite' do
  version '0.20190716.0'
  sha256 '9b3c83f478552bbcf1e5c97c874e8251bfed1294e4481337619ddebfb0c6b1cd'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
