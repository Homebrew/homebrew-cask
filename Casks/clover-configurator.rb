cask 'clover-configurator' do
  version '5.3.2.0'
  sha256 '221af161b5600ff786809190f6ac9d0ed7f1b7d211db6a50470a2873941f19c0'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
