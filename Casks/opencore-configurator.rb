cask 'opencore-configurator' do
  version '1.20.0.0'
  sha256 'd94974dea51908067beb073618abd8463be9d5c89c05b9d0d1c55fcb45794482'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
