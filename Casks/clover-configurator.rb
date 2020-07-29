cask 'clover-configurator' do
  version '5.14.1.0'
  sha256 '75c6f622a7e04ab7ae9ef839397fe8b93478cb9aeee8e0e923eee1bb00f67fb4'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  auto_updates true

  app 'Clover Configurator.app'
end
