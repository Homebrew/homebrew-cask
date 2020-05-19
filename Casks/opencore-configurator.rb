cask 'opencore-configurator' do
  version '2.4.0.0'
  sha256 'f546ed55d5d7308b3f1c41524b4bda62993c0b771fb16506cd2748ed2c3dc978'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
