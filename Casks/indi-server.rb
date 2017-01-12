cask 'indi-server' do
  version '2.3.4'
  sha256 '0e8b061211f8f1d03afd0b9fc6b8e886bc7f94e24a93a77de2037cef964ddbe0'

  url "http://download.cloudmakers.eu/INDI_Server_#{version}.dmg"
  name 'INDI Server'
  homepage 'http://www.cloudmakers.eu/'

  app 'INDI Server.app'
end
