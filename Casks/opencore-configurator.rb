cask 'opencore-configurator' do
  version '1.21.0.0'
  sha256 '0e8caed753e4915f33f8d0ba500197003b8c604f96d3052c0bcb4f01fa484cf1'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
