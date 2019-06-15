cask 'idagio' do
  version '0.0.88'
  sha256 '680ab0cf7e22033bdaf51112af5a15bf6377730c3f5a3baa1cfe4b7c1d786eba'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
