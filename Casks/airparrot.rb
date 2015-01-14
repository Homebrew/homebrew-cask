cask :v1 => 'airparrot' do
  version :latest
  sha256 :no_check

  url 'http://download.airsquirrels.com/AirParrot2/Mac/AirParrot2.dmg'
  name 'AirParrot'
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'AirParrot 2.app'
end
