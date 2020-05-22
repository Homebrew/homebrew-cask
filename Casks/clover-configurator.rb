cask 'clover-configurator' do
  version '5.13.1.0'
  sha256 'dbfc95c454ebf033da79a46a8fc70b3a3a8d586b111f37591c6e51a486cf4758'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  auto_updates true

  app 'Clover Configurator.app'
end
