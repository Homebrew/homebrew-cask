cask 'kite' do
  version '0.20200320.0'
  sha256 '4211dca35c9b2cd995e333fa14a957a8d621fbd4318041cc232878fee3b0bc23'

  # draqv87tt43s0.cloudfront.net was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
