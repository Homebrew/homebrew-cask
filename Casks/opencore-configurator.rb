cask 'opencore-configurator' do
  version '2.2.0.0'
  sha256 '05c08eef93632ff1a8d27b6a39e4035358b787cb32440f2bbf2106f3183395a2'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
