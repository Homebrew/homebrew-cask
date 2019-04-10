cask 'clover-configurator' do
  version '5.4.2.1'
  sha256 'c7bcf7c953ee9a7c7ddcef0e66181585e6baabf8da31304ad4738b467e2b0f76'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data-ccg/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
