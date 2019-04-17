cask 'clover-configurator' do
  version '5.4.3.1'
  sha256 'cef05a253dbb51605332d0424e16e4164b758a4ca69d5e162d7e9862370bb196'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data-ccg/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
