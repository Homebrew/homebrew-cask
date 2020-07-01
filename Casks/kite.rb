cask 'kite' do
  version '0.20200629.0'
  sha256 '0a9f131e9066c1607da61a5c1872f5f01cb9f676acee1bb5e7a5161f4643bf37'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
