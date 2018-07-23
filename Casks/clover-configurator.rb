cask 'clover-configurator' do
  version '5.1.4.0,CCG'
  sha256 '4c353c6a94aed7acd59fbf21517f7130a5655d7b2936ff6468aa13cc9fe5c476'

  url "http://mackie100projects.altervista.org/apps/cloverconf/#{version.after_comma}/builds-data/#{version.after_comma}.zip"
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
