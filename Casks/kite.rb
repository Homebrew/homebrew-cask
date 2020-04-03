cask 'kite' do
  version '0.20200327.0'
  sha256 'c60cdbdc98d739a5f9f7699f309e28e922865001d44265ee4cf2e4cbc952c632'

  # draqv87tt43s0.cloudfront.net was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
