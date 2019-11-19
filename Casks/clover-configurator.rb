cask 'clover-configurator' do
  version '5.7.0.0'
  sha256 '7d4cbf65e835541922d0411fa856835a78e642ee05e7573d69e63fe902e299f9'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data-ccg/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
