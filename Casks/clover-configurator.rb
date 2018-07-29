cask 'clover-configurator' do
  version '5.1.5.0'
  sha256 'e449f8c56a5c78e230a23222d2cf2bcccf1c8998c34c68e341ba022aefc96f77'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
