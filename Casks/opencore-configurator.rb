cask 'opencore-configurator' do
  version '2.7.0.0'
  sha256 '908b74cf56fe5f078d6d7d28998ab615a42da8b90a45ee9b0f0a1c869c96aa6f'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
