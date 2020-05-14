cask 'idagio' do
  version '0.0.118'
  sha256 'c20b6e9f7be877a38f918d23fdd4fcf072f1908ace1da29cbec0a0050aa0ae2b'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
