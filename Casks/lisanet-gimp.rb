cask 'lisanet-gimp' do
  version '2.8.14p2'
  sha256 '17666088c365f39b0ad666e2f888e9204b5c6843ae420bb9529872290139b17d'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/gimponosx/Gimp-#{version}-Mavericks-Yosemite.dmg"
  name 'GIMP'
  homepage 'http://gimp.lisanet.de'
  license :gpl

  app 'Gimp.app'
end
