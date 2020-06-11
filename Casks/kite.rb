cask 'kite' do
  version '0.20200608.0'
  sha256 '44a3a1ce1829de872570a170d1e82be2bf4567049833254e9edae33b8352e4ad'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
