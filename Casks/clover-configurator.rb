cask 'clover-configurator' do
  version '5.13.0.1'
  sha256 'd21f43f5181af2c586207586819ad1ea16ad2bdacd33261072fdcfcc756dffb0'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  auto_updates true

  app 'Clover Configurator.app'
end
