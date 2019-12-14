cask 'clover-configurator' do
  version '5.9.0.0'
  sha256 'c2ef475bfb15dcca17daa5171b95bf220bfc971c02e3c8e41a694c4596b918fb'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
