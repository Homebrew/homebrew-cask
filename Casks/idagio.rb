cask 'idagio' do
  version '0.0.97'
  sha256 '4b5697d0eedf7d327ab36187cc35836c7ac441128d8310ca596e8a89eac41065'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
