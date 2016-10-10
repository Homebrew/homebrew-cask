cask 'lisanet-gimp' do
  version '2.8.14p2'
  sha256 '17666088c365f39b0ad666e2f888e9204b5c6843ae420bb9529872290139b17d'

  # sourceforge.net/gimponosx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gimponosx/Gimp-#{version}-Mavericks-Yosemite.dmg"
  appcast 'https://sourceforge.net/projects/gimponosx/rss',
          checkpoint: 'b4aa8e9ea275606268fe0f1e239832b8126d3a7707d24644b9b12e13e40307a1'
  name 'GIMP'
  homepage 'http://gimp.lisanet.de/'

  app 'Gimp.app'
end
