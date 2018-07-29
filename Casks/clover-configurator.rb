cask 'clover-configurator' do
  version '5.1.5.0,CCG'
  sha256 'e449f8c56a5c78e230a23222d2cf2bcccf1c8998c34c68e341ba022aefc96f77'

  url "http://mackie100projects.altervista.org/apps/cloverconf/#{version.after_comma}/builds-data/#{version.after_comma}.zip"
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
