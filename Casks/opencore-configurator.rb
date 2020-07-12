cask 'opencore-configurator' do
  version '2.7.1.0'
  sha256 '33adeb8d5badff1ad4e276fc9696067d62c6ed0f3aad5d2010666930ce200531'

  url 'https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last'
  appcast 'https://mackie100projects.altervista.org/download/occ/'
  name 'OpenCore Configurator'
  homepage 'https://mackie100projects.altervista.org/download-opencore-configurator/'

  app 'OpenCore Configurator.app'
end
