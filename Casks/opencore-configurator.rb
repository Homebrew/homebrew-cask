cask 'opencore-configurator' do
  version '2.3.0.0'
  sha256 'ec6ac5ad5931b70c9553b8ccea481c44ca5d3ddcf16f50bdbae7e847d6ed3f61'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
