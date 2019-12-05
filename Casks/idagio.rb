cask 'idagio' do
  version '0.0.107'
  sha256 '3c39f894e8e69db57818534108753199e5f5b5dd59151c8000e13cd2632d5c38'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
