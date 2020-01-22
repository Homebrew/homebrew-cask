cask 'clover-configurator' do
  version '5.9.2.0'
  sha256 '5ce3fbba0e283e8fa5911426bcfb5a0a09ffe1eaf2ef1ba9e74febf5ad3a0070'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
