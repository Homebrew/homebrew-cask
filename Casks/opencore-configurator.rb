cask 'opencore-configurator' do
  version '1.15.0.1'
  sha256 '48952b3558a5553ec61ae8d39c434293017213517cf77ae3b7b2dcf11124934e'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
