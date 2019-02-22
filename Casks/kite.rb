cask 'kite' do
  version '0.20190221.0'
  sha256 'bc87eae9bc368c2f75ce0fb709ab6243e8ac30c839f8d9b3578f431541351742'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
