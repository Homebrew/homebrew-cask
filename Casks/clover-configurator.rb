cask 'clover-configurator' do
  version 'CCG'
  sha256 :no_check

  url "https://mackie100projects.altervista.org/apps/cloverconf/#{version}/builds-data/CCG.zip"
  appcast "https://mackie100projects.altervista.org/apps/cloverconf/#{version}/update-data-builds.xml"
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
