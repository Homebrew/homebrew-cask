cask 'clover-configurator' do
  version '5.4.5.0'
  sha256 'd882be677980e38dcec3b96ebbad5411b3fbf9e27bd70da7d83a34a7edfa9693'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data-ccg/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
