cask 'clover-configurator' do
  version '5.4.0.0'
  sha256 '98b4a322102780ce6a58b89bfb8c236caf1add3cda4e7511611f21d31ca079b4'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
