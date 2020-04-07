cask 'opencore-configurator' do
  version '1.22.0.0'
  sha256 '71ccbcceb4d9627690994bd6d2f318e55c22fea84ac0d09ab7423b6f3521ad29'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
