cask 'indi-server' do
  version '2.3.0'
  sha256 '5fce411ad03eec7f18b6093d76fff2cac9d366ed1738efe294d19bfb2bd725de'

  url "http://download.cloudmakers.eu/INDI_Server_#{version}.dmg"
  name 'INDI Server'
  homepage 'http://www.cloudmakers.eu/'

  app 'INDI Server.app'
end
