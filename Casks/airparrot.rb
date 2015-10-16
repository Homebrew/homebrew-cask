cask :v1 => 'airparrot' do
  version '2.2.1'
  sha256 '0be7fa38ddfbc377356e14bc1b09bd9f876adcd6cc095bc3a58f8846cea0dd02'

  url "http://download.airsquirrels.com/AirParrot2/Mac/AirParrot-#{version}.dmg"
  name 'AirParrot'
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :commercial

  app 'AirParrot 2.app'
end
