cask 'opencore-configurator' do
  version '1.13.2.0'
  sha256 'fcd6e07cfff6764bd7770d445e0add9e10a620673df75de10b089bd0494aeee2'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
