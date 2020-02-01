cask 'opencore-configurator' do
  version '1.13.3.0'
  sha256 '5882c6cfdf698f72c8b96a86eb7f29eb52f289373ac87e8242f69c0a207634cf'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
