cask 'kite' do
  version '0.20200528.0'
  sha256 '73cf85fe42699a733d5a6143c580385a838a19e3d62f329714c848f20f37e55d'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
