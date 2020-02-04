cask 'opencore-configurator' do
  version '1.14.0.2'
  sha256 '4a8c5e9a0f06f0b2fa27183ed3495c08a663926b8477d3aa346318087295b8f5'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
