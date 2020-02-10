cask 'idagio' do
  version '0.0.113'
  sha256 '13cbd0600a59561d1c6a41a18c41e7e38392382a1d443ee5a5751a77c776909b'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
