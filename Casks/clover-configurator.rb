cask 'clover-configurator' do
  version '5.6.0.0'
  sha256 '9df774ce26ef084807d916fc76cb5091891db13f9f0cfe945eec241581622ea0'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data-ccg/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
