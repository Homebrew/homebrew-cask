cask 'opencore-configurator' do
  version '2.7.0.1'
  sha256 '6486794aaa707722c8176b72e6f5790508aa6e8f15efaa6ad0ef7b657f5c1184'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
