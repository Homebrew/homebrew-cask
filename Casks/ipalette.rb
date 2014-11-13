cask :v1 => 'ipalette' do
  version '2.2'
  sha256 '1a2b56a3c9c3072e4857e8982d5197583463e3d745b8cdce44d7dec18a8d868d'

  url "http://ipalette.info/downloads/iPalette-#{version}.zip"
  appcast 'http://ipalette.info/appcast.xml',
          :sha256 => '34c43891e7e6775f59d9e22122c05992e56ef746d7ac668ccd3bae90f7ac312a'
  homepage 'http://ipalette.info/'
  license :unknown

  app 'iPalette.app'
end
