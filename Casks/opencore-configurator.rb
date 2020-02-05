cask 'opencore-configurator' do
  version '1.14.0.2'
  sha256 'bfa7cff464a043fd431ab7a4b0017de5a2dd93ab85576ddba65ec4b63ede5e46'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/category/opencore-configurator-changelog/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
