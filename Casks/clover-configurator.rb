cask 'clover-configurator' do
  version '5.9.4.0'
  sha256 '7080a583ff9e27a94c2222c5c2bfe8cc8877decbf28ea8ebc3a435ed050673b7'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  auto_updates true

  app 'Clover Configurator.app'
end
