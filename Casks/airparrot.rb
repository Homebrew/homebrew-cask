cask 'airparrot' do
  version '2.5.0'
  sha256 '248ecc4b2bb0ed3166855c020fe5a954d2e0aa6e01364727925f031abd508978'

  url "https://download.airsquirrels.com/AirParrot2/Mac/AirParrot-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml',
          checkpoint: '630b0a13c8b04d1aec087b51dd24c83ad634db1a2bb19917437ad152257f2d67'
  name 'AirParrot'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :commercial

  app 'AirParrot 2.app'
end
