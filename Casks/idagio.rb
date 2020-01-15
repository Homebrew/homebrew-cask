cask 'idagio' do
  version '0.0.109'
  sha256 'f6415dd1fccb449a3d75b86875c80366c781b420d24c96cdeb15a0d1a5c3ea28'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
