cask 'idagio' do
  version '0.0.112'
  sha256 'e2910f45195d546883e1e74737042f6413193cdcdee953c1530930b96b4b3765'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
