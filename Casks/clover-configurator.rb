cask 'clover-configurator' do
  version '5.4.1.1'
  sha256 'a466c8950984791acc88568e09d90a4281bec7342667482e948eb69a9a2c2685'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
