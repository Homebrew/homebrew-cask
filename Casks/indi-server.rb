cask 'indi-server' do
  version '2.3.3'
  sha256 '2932ea2379fc6c49de3b946bdf0e8d49a375516b46da2b8462175ee3b5909d29'

  url "http://download.cloudmakers.eu/INDI_Server_#{version}.dmg"
  name 'INDI Server'
  homepage 'http://www.cloudmakers.eu/'

  app 'INDI Server.app'
end
