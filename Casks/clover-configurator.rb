cask 'clover-configurator' do
  version '5.14.0.0'
  sha256 '2c48e39d2e1d1cc698f5a6a274ca72c3e1b3d064f0caf9a639095a024dc52c85'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  auto_updates true

  app 'Clover Configurator.app'
end
