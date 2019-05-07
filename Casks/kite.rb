cask 'kite' do
  version '0.20190502.0'
  sha256 '52b87b914ae9f7798a2cedd312a99065950dc0d14a351b5caaf65f81e51c2cbd'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
