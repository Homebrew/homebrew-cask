cask :v1 => 'easyvpn' do
  version '1.6'
  sha256 '4ece3c25ea7fb03340603caf3bef3454a08d0e1a7e89dead87bb53ca1631ca40'

  url "http://www.squashedsoftware.com/downloads/easyVPN_#{version}.zip"
  appcast 'http://www.squashedsoftware.com/appcasts/easyvpn.xml',
          :sha256 => '36947804161daa7040c9d8cb7d682f223f65577d3ad4a16129e9e53ccf66270e'
  homepage 'http://www.squashedsoftware.com/products-easyvpn.php'
  license :unknown

  app 'EasyVPN.app'
end
