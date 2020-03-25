cask 'kite' do
  version '0.20200324.3'
  sha256 '192decefc7a762c449e292c7da4229b45f9c8bd3c2ddd34c8d7e6db7b1eb9f42'

  # draqv87tt43s0.cloudfront.net was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
