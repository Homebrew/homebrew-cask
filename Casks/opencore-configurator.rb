cask 'opencore-configurator' do
  version '1.17.0.0'
  sha256 '225fef71ffa1338b95f5c08d75fe2dd8a0cc83682431bca0d0c635e4f0826463'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
