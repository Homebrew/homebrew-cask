cask 'airparrot' do
  version '2.6.0'
  sha256 'fa995bba665827f8671abd4d1f9e567aefc609aad6c1516433c0b34f32d9522b'

  url "https://download.airsquirrels.com/AirParrot2/Mac/AirParrot-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml',
          checkpoint: '49e3f8ee8e687971542195b007a3db1107dbb210f7a7a11024d89a2fa1644980'
  name 'AirParrot'
  homepage 'https://www.airsquirrels.com/airparrot/'
  license :commercial

  app 'AirParrot 2.app'
end
