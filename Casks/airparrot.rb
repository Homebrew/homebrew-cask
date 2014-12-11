cask :v1 => 'airparrot' do
  version :latest
  sha256 :no_check

  url 'http://download.airsquirrels.com/AirParrot2/Mac/AirParrot2.dmg'
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :unknown    # todo: improve this machine-generated value

  app 'AirParrot 2.app'
end
