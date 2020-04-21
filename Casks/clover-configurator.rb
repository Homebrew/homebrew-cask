cask 'clover-configurator' do
  version '5.10.0.0'
  sha256 'ee40278912299121b28c83f03a2efc6a685ea516d6113ea65d76b118c0dc874f'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  auto_updates true

  app 'Clover Configurator.app'
end
