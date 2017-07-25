cask 'clover-configurator' do
  version '4.46.0'
  sha256 'c598487a0f1208299944d8364a3af5bebd5820089be6b41f7ff7eb26d01e31f7'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '9f5112308c4db607db5c5ade863270d6b20843a413b7dd98b439b9d086e2f653'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
