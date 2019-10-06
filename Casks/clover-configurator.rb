cask 'clover-configurator' do
  version '5.6.1.0'
  sha256 'f026ea023bac469fbf5c9902c8a71be6365037e4da611c89abace246604a9adb'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data-ccg/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
