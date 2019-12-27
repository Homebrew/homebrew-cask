cask 'idagio' do
  version '0.0.108'
  sha256 '39d56035164d3d0f4989954d03284daf70f5fd4e9d621d3a46b9b91cb70aa8f8'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
