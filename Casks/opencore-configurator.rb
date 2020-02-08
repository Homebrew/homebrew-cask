cask 'opencore-configurator' do
  version '1.14.1.1'
  sha256 '0099915ca5733deebe53a71f5aee7e2c8c4b159098b4c5d9bcebcadb37d17c01'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
