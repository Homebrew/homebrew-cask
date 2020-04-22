cask 'opencore-configurator' do
  version '2.0.0.0'
  sha256 '5cb94bcb52e4dcaaaef91d8b0bd5c000ddce64f8c003df1c9bce29e49184d50d'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
