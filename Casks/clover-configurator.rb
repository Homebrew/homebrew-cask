cask 'clover-configurator' do
  version '5.9.2.1'
  sha256 '02a66bcbaf3c7beaef68adf0cb33465118a077a8a95c563612dea97d2b88650f'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
