cask 'lisanet-gimp' do
  if MacOS.version <= :el_capitan
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

  appcast 'https://sourceforge.net/projects/gimponosx/rss'
  name 'GIMP'
  homepage 'http://gimp.lisanet.de/'

  app 'Gimp.app'
end
