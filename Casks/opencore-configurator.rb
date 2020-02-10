cask 'opencore-configurator' do
  version '1.14.1.1'
  sha256 'c74e2d314ec3d2824cc1166dc4811be1b5e6465276024d41d40ca13a62f00bdc'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
