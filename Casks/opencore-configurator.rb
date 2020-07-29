cask 'opencore-configurator' do
  version '2.6.0.2'
  sha256 '705c34e9e934f91be04a59ade92bc95dacdb731e295a97244de3147302186aa7'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
