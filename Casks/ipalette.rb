cask 'ipalette' do
  version '2.2'
  sha256 '1a2b56a3c9c3072e4857e8982d5197583463e3d745b8cdce44d7dec18a8d868d'

  url "http://ipalette.info/downloads/iPalette-#{version}.zip"
  appcast 'http://ipalette.info/appcast.xml',
          :sha256 => '3c87c470b8ade6cee891fe4a214e9a5abcc5be65e85edb685b2b94322cc9c510'
  name 'iPalette'
  homepage 'http://ipalette.info/'
  license :gratis

  app 'iPalette.app'
end
