cask 'idagio' do
  version '0.0.90'
  sha256 '283382ba47d461fb3d834dc09979d27e64309fc9a1810bf10fc5643cd3863e38'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
