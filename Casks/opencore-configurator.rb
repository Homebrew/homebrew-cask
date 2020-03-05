cask 'opencore-configurator' do
  version '1.16.0.0'
  sha256 'c2094360280b71ff43f891a833f2cb49ed2fee01a81bad37f7af489926c14608'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
