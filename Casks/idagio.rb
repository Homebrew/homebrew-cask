cask 'idagio' do
  version '0.0.95'
  sha256 'd7e68ddded5d42647d029bb94b76b963c0bfbfc168b76f9505a0a6169e335632'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
