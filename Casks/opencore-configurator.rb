cask 'opencore-configurator' do
  version '1.17.0.0'
  sha256 'f2aec36c46623baabce9c46df8812290bdc29687987f871c53091fc6ba1fa987'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
