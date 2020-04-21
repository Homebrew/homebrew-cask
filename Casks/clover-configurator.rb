cask 'clover-configurator' do
  version '5.11.0.0'
  sha256 '68807a9a00eaec6848b9ed6cfeb86d5f50028f4223815f20fc17df90089a9afe'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  auto_updates true

  app 'Clover Configurator.app'
end
