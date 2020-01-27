cask 'opencore-configurator' do
  version '1.13.2.0'
  sha256 '83dd59725091db57c4f265d59cc1098223247d196882393e7250332eaa9a42ec'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
