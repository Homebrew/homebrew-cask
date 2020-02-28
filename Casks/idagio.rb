cask 'idagio' do
  version '0.0.115'
  sha256 '257c28da7dc1bdff5429e489ea3eb0045a388f705d4bf01e2cc2dc26487bee8c'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
