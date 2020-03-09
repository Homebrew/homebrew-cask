cask 'opencore-configurator' do
  version '1.17.0.0'
  sha256 'a3bc177cae4984f1e9721470e820b18730b072df2d81e91634c77e74d6c44c38'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
