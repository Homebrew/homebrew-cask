cask :v1 => 'airparrot' do
  version '2.1.2'
  sha256 'ee77f17e3ad6cf2872999deeb1742e6d79bada6ee31863788d7cc1185e589e5d'

  url "http://download.airsquirrels.com/AirParrot2/Mac/AirParrot-#{version}.dmg"
  name 'AirParrot'
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :commercial

  app 'AirParrot 2.app'
end
