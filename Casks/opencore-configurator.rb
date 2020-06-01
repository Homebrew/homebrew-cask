cask 'opencore-configurator' do
  version '2.5.0.0'
  sha256 '217de26970a7532d5add106a17c155d7a5a3da71712ae82433d922c2c9c79dbb'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
