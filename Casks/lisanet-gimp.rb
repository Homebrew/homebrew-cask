cask 'lisanet-gimp' do
  version '2.8.18p1'
  sha256 '684aceb7825451067a9f9a534d1d4c7a92f14f6e6fee3517abbb4443769f718b'

  # sourceforge.net/gimponosx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gimponosx/Gimp-#{version}-Sierra.dmg"
  appcast 'https://sourceforge.net/projects/gimponosx/rss',
          checkpoint: '04478be6232c8ae7294f21e06fbbaa9e5a1d26ff0e0fe9b3396ce7b626f5a6f3'
  name 'GIMP'
  homepage 'http://gimp.lisanet.de/'

  app 'Gimp.app'
end
