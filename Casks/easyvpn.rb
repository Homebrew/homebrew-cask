cask 'easyvpn' do
  version '1.6'
  sha256 '4ece3c25ea7fb03340603caf3bef3454a08d0e1a7e89dead87bb53ca1631ca40'

  url "http://www.squashedsoftware.com/downloads/easyVPN_#{version}.zip"
  appcast 'http://www.squashedsoftware.com/appcasts/easyvpn.xml',
          checkpoint: '34cc9739526b33f9ee56e2140da9418b9cfa764458c323391413db347f6f1431'
  name 'EasyVPN'
  homepage 'http://www.squashedsoftware.com/products-easyvpn.php'

  app 'EasyVPN.app'
end
