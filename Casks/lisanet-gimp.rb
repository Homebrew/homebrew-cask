cask 'lisanet-gimp' do
  if MacOS.version <= :mavericks
    version '2.8.14p2'
    sha256 '17666088c365f39b0ad666e2f888e9204b5c6843ae420bb9529872290139b17d'
    # sourceforge.net/gimponosx was verified as official when first introduced to the cask
    url "https://downloads.sourceforge.net/gimponosx/Gimp-#{version}-Mavericks-Yosemite.dmg"
  elsif MacOS.version <= :el_capitan
    version '2.8.18'
    sha256 'a055b331859d46deaf4bc4e12f7b3697c293180f74c418b8bf04eea45353ab28'
    # sourceforge.net/gimponosx was verified as official when first introduced to the cask
    url "https://downloads.sourceforge.net/gimponosx/Gimp-#{version}-Yosemite-El-Capitan.dmg"
  else
    version '2.8.18p1'
    sha256 '684aceb7825451067a9f9a534d1d4c7a92f14f6e6fee3517abbb4443769f718b'
    # sourceforge.net/gimponosx was verified as official when first introduced to the cask
    url "https://downloads.sourceforge.net/gimponosx/Gimp-#{version}-Sierra.dmg"
  end

  appcast 'https://sourceforge.net/projects/gimponosx/rss',
          checkpoint: '04478be6232c8ae7294f21e06fbbaa9e5a1d26ff0e0fe9b3396ce7b626f5a6f3'
  name 'GIMP'
  homepage 'http://gimp.lisanet.de/'

  app 'Gimp.app'
end
