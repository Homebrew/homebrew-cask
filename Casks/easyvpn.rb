cask 'easyvpn' do
  version '1.6'
  sha256 '4ece3c25ea7fb03340603caf3bef3454a08d0e1a7e89dead87bb53ca1631ca40'

  url "http://www.squashedsoftware.com/downloads/easyVPN_#{version}.zip"
  appcast 'http://www.squashedsoftware.com/appcasts/easyvpn.xml',
          checkpoint: 'aff462b7453c7cbba26366a5194c81cb39751429a29292d9fd25184bc7d6d866'
  name 'EasyVPN'
  homepage 'http://www.squashedsoftware.com/products-easyvpn.php'

  app 'EasyVPN.app'
end
