cask 'opencore-configurator' do
  version '1.17.0.0'
  sha256 'e1d71a3e3e7d696b7e70e5873aef079db475b01a639e797cb250ce7c0aefc3ae'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
