cask :v1 => 'airparrot' do
  version '2.2.0'
  sha256 'bdafccf1946f4370974acda3ef7ccfd55f2e7af0127f731338587de759bd824f'

  url "http://download.airsquirrels.com/AirParrot2/Mac/AirParrot-#{version}.dmg"
  name 'AirParrot'
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :commercial

  app 'AirParrot 2.app'
end
