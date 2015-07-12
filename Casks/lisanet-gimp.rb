cask :v1 => 'lisanet-gimp' do
  version '2.8.14p1'
  sha256 '9769d83ddbe8ed591e6c0bd828b9133460e231c06e416d948c1f7012b478b346'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/gimponosx/Gimp-#{version}-Mavericks-Yosemite.dmg"
  name 'GIMP'
  homepage 'http://gimp.lisanet.de'
  license :gpl

  app 'Gimp.app'
end
