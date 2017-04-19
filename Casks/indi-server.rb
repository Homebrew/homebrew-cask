cask 'indi-server' do
  version '2.4.0'
  sha256 'fe2ae06c89ca10da2ff440bdf51410d5f8d36f3318010a204cc99ba426a19f51'

  url "http://download.cloudmakers.eu/INDI_Server_#{version}.dmg"
  name 'INDI Server'
  homepage 'http://www.cloudmakers.eu/'

  app 'INDI Server.app'
end
