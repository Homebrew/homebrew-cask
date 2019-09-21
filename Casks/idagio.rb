cask 'idagio' do
  version '0.0.100'
  sha256 'd17195eaa113c675e24645d81d85c874d811d2db13d07178581ceeae811112f1'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
