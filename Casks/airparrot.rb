cask :v1 => 'airparrot' do
  version :latest
  sha256 :no_check

  url 'http://download.airsquirrels.com/AirParrot/Mac/AirParrot.dmg'
  appcast 'http://airparrot.com/updates/AirParrot.xml'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :unknown

  app 'AirParrot.app'
end
