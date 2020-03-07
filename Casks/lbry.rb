cask 'lbry' do
  version '0.43.3'
  sha256 'cdc7dd244215d2a4d04672b8db8ded16d39593cf2caabf782c1684d893c7c1a7'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
