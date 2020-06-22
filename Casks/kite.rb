cask 'kite' do
  version '0.20200619.1'
  sha256 '40e25e19979d19f2c6bbee0e518e0ca8be3cffdcf0b1d3d4fd9fe7baddf86c9f'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
