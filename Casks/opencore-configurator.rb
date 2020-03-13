cask 'opencore-configurator' do
  version '1.19.0.0'
  sha256 'c4586922a6306837e0b12a07d5e66f35e94aac0f034f80a30d96020b58c3d79d'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
