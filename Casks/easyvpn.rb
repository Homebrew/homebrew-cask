cask 'easyvpn' do
  version '1.6'
  sha256 '4ece3c25ea7fb03340603caf3bef3454a08d0e1a7e89dead87bb53ca1631ca40'

  url "http://www.squashedsoftware.com/downloads/easyVPN_#{version}.zip"
  appcast 'http://www.squashedsoftware.com/appcasts/easyvpn.xml'
  name 'EasyVPN'
  homepage 'http://www.squashedsoftware.com/products-easyvpn.php'

  app 'EasyVPN.app'
end
