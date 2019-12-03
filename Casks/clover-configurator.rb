cask 'clover-configurator' do
  version '5.8.0.0'
  sha256 '66d4698b48022823cd09d08713d72ac15f3a3528ccf846e975f4632fcbeac771'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
