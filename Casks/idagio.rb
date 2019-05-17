cask 'idagio' do
  version '0.0.86'
  sha256 '8d3500d1570aceea35638489e21066844670516eb3ded875c52dc3ecb37cc412'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
