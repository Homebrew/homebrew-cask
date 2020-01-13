cask 'clover-configurator' do
  version '5.9.1.0'
  sha256 '72d645def66fcf53822ebfa41b6fa1469fdfe5f917f7e66e23deb0ff11b4c456'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
