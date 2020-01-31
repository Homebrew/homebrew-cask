cask 'idagio' do
  version '0.0.111'
  sha256 '7fb4460159a5bcbb8670271c5ff17cea512fdcfe93fbdca08fd8b58a304af3b9'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
