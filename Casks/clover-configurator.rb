cask 'clover-configurator' do
  version '5.9.3.0'
  sha256 '835520fac6f6d343980b6a03414e994482dd76e07ecf8a147f047214f40644ff'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  auto_updates true

  app 'Clover Configurator.app'
end
