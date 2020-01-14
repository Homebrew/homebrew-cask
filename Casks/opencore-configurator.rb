cask 'opencore-configurator' do
  version '1.12.0.0'
  sha256 '0c8f5425035cd276355a9ae2c64551a89660b964aaf0454bf0103dae42b4cd2f'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
