cask 'idagio' do
  version '0.0.101'
  sha256 'a816a3675562eb7a4a6cfa62b393299e8b513c48a39c3250f2598bb3258e38aa'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
