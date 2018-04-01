cask 'indi-server' do
  version '2.6.0'
  sha256 '6ccfba73c89ad4dbc46e20496015a5e481c4e0d03f2eae2f2ceb849734530b79'

  url "http://download.cloudmakers.eu/INDI_Server_#{version}.dmg"
  name 'INDI Server'
  homepage 'http://www.cloudmakers.eu/'

  app 'INDI Server.app'
end
