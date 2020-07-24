cask 'kite' do
  version '0.20200722.1'
  sha256 '7176f998eb953df324d894f8868ed5fa8bd0f88da194e34d04814835666ccb84'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
