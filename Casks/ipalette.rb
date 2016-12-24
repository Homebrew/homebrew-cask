cask 'ipalette' do
  version '2.2'
  sha256 '1a2b56a3c9c3072e4857e8982d5197583463e3d745b8cdce44d7dec18a8d868d'

  url "http://ipalette.info/downloads/iPalette-#{version}.zip"
  appcast 'http://ipalette.info/appcast.xml',
          checkpoint: 'f2fd0099df0e42ed76ba3f48344471d806eeb63322b77079d345a4d3da14bf65'
  name 'iPalette'
  homepage 'https://ipalette.info/'

  app 'iPalette.app'
end
