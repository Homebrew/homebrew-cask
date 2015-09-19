cask :v1 => 'airserver' do
  version '6.0.0'
  sha256 'daf4d3996c107b50f19031354402561e08626c5ed19a9635dc9e8ce17edfb3b0'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'http://www.airserver.com/downloads/mac/appcast.xml',
          :sha256 => '96343d31daa2ac79459b74db3464fcdef1deda5514400e2bdd9649936e17c997'
  name 'AirServer'
  homepage 'http://www.airserver.com'
  license :commercial

  app 'AirServer.app'
end
