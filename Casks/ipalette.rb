cask 'ipalette' do
  version '2.2'
  sha256 '1a2b56a3c9c3072e4857e8982d5197583463e3d745b8cdce44d7dec18a8d868d'

  url "http://ipalette.info/downloads/iPalette-#{version}.zip"
  appcast 'http://ipalette.info/appcast.xml',
          :sha256 => 'f37159cc08cdf364b801c543deff7324cac5131ea03b10e198d372c86fd4b39b'
  name 'iPalette'
  homepage 'http://ipalette.info/'
  license :gratis

  app 'iPalette.app'
end
