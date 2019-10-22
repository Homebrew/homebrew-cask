cask 'clover-configurator' do
  version '5.6.2.0'
  sha256 'ab6c6792bc28601d97f829e3d9b47508b7453fd660ed9b49d930b0e92387ba76'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data-ccg/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
