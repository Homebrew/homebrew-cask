cask 'opencore-configurator' do
  version '1.14.0.2'
  sha256 'fc561732a087683cc86c33c2a19d289b8f5ce9d615852ebd235fa69e69f98d20'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
