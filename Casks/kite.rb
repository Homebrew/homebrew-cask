cask 'kite' do
  version '0.20190108.0'
  sha256 'e09855febc8a7973b91c5e319282f934f3af78cc366426d7ad6f00f2792a72cd'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
