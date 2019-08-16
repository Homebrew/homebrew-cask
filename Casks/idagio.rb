cask 'idagio' do
  version '0.0.96'
  sha256 '515fb9b141ce82a1725c6e07731fd658b5a4ed82cf398896abd8f3ef755800e8'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
