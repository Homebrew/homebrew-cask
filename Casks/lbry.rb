cask 'lbry' do
  version '0.45.2'
  sha256 '75b184db304d898bdea1ccf55fab13cd98bb8cea7bad501809c2f1587cce7988'

  # github.com/lbryio/lbry-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
