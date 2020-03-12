cask 'opencore-configurator' do
  version '1.18.1.0'
  sha256 '917868cbfd5af0f74e4a19555af1afb8d7499501478fba2b9a4baea0b347c08e'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
