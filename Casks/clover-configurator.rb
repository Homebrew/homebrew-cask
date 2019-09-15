cask 'clover-configurator' do
  version '5.5.0.0'
  sha256 '4c2059895ef65067269e18b7108781d5a3f20b05aa81d8b87db1d1dd9c84b82b'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data-ccg/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
