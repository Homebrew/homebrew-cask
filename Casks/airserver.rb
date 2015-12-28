cask 'airserver' do
  version '6.0.3'
  sha256 'b4d08ac1db459ea01ae1812a11421ad1f380ed417eb6b857b5142c86b3e09d29'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml',
          :sha256 => '9a8cf6d84b044351c28a4c5e3e1f38eef70a81e6e74ff5aff38298ba55c45631'
  name 'AirServer'
  homepage 'https://www.airserver.com'
  license :commercial

  app 'AirServer.app'
end
