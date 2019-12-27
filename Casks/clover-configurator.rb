cask 'clover-configurator' do
  version '5.9.0.1'
  sha256 'b55f56b29baf669ed0284ebf302e73228f29dafad81cd71eb6013c05a97827ad'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
