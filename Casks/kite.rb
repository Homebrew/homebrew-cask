cask 'kite' do
  version '0.20200720.0'
  sha256 'abc65184994311145c25d7ac708bdb48d3700e01b267b5edfdf4786b935690bc'

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
