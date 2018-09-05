cask 'clover-configurator' do
  version '5.2.0.1'
  sha256 'afed4c08d0bc3c8b017e75847c22d516adbd4a2be904cd4facf4889b8836bce8'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
