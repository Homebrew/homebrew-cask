cask 'opencore-configurator' do
  version '2.6.0.1'
  sha256 '6764bdd0a15d1d60ccdeafaf58d039f143c1fde9902c39ffe15170581903c034'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
