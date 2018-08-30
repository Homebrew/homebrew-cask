cask 'clover-configurator' do
  version '5.2.0.0'
  sha256 'f26694143ad4c33e84992e0e282c5d745f3b0a24f50a3eacaad1fda1d2bbb5a0'

  url 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/builds-data/CCG.zip'
  appcast 'https://mackie100projects.altervista.org/apps/cloverconf/CCG/update-data-builds.xml'
  name 'Clover Configurator'
  homepage 'https://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
