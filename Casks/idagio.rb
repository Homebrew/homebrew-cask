cask 'idagio' do
  version '0.0.102'
  sha256 '3ad775db1f3490af4cda4de645f8298f6bf79925e2f8a117abc5a32ce7660333'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
