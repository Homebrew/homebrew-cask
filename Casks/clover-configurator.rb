cask 'clover-configurator' do
  version '5.2.1.0'
  sha256 '03e344e4ccc8e6f5042dcd1da38e199bb34f0cb4df7fc5d16531d3eddbfa0d06'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
