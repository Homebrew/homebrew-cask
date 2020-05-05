cask 'opencore-configurator' do
  version '2.1.0.0'
  sha256 '4fd2919743797e45519cb1aea7245eaff66ba6bf280eec98bd1d324ac856901b'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
