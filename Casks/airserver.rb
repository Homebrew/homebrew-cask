cask 'airserver' do
  version '7.0.1'
  sha256 '933658798a5014e2cd33d2dfbfe76a2c2f3f4dd4a1646fe73547174832074a90'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml',
          checkpoint: '6050520478908e4e475468f8a8de1f5a194d9fa00eec5ff29f90f1927f6b1502'
  name 'AirServer'
  homepage 'https://www.airserver.com'

  app 'AirServer.app'
end
