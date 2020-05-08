cask 'clover-configurator' do
  version '5.12.0.0'
  sha256 '55036a066c2033121aa9472bd945ee97df8e30c4c652f3d838a2b9896e44d512'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  auto_updates true

  app 'Clover Configurator.app'
end
