cask 'indi-server' do
  version '2.4.1'
  sha256 'a7c1a0eb9701afcbe694bd0467385b890e3d5efc5d615351a2d89ad2692957ae'

  url "http://download.cloudmakers.eu/INDI_Server_#{version}.dmg"
  name 'INDI Server'
  homepage 'http://www.cloudmakers.eu/'

  app 'INDI Server.app'
end
