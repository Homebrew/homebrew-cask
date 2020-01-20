cask 'idagio' do
  version '0.0.110'
  sha256 'd92456753e3f8269a73456144c3b4a6058573b6b9b7460edb73cf3f48607d744'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
