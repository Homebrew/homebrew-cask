cask 'idagio' do
  version '0.0.114'
  sha256 'a419d316a4f542fd0f07a6fcfbe952e127ff93c4a9237485a9567659f2c76009'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
