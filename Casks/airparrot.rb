cask :v1 => 'airparrot' do
  version '2.1.0'
  sha256 '155874eaa61a5807b656b7c6d41545d046fad74b09414429824a3361e57e8a18'

  url 'http://download.airsquirrels.com/AirParrot2/Mac/AirParrot-2.1.dmg'
  name 'AirParrot'
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :commercial

  app 'AirParrot 2.app'
end
