cask 'clover-configurator' do
  version '5.3.0.0'
  sha256 'c2aa1c93c24d0d843b07369e079b7f348f146082deed544601558bc6639c96f4'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
