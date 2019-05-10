cask 'clover-configurator' do
  version '5.4.4.0'
  sha256 '9e7a0ffd1cac3f205f1a871cbaa8ddc5e8350641b6a63c893fd3fae47bb576f4'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data-ccg/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
