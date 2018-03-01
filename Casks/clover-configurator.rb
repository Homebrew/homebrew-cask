cask 'clover-configurator' do
  version '4.60.2.0'
  sha256 'c9945aa34d0af8fc2b6a3e8c4ba97e81f0ca2230f18ce2f35f4814378cb89e51'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: 'b7756d73f891075d4437cb9ced6457250fb09c3323fd69f41fac75e313d494d5'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
