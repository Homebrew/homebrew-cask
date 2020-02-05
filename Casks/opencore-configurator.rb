cask 'opencore-configurator' do
  version '1.14.0.2'
  sha256 '0bd08c8105864887995168f1da62b3ad860f6451d27b59e1fadc2a7e678aba2e'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
