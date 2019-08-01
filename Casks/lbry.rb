cask 'lbry' do
  version '0.34.2'
  sha256 'd2a6be4c6d00f09aff8d3d137431a217ca60b36240e85515a1d1ca29f0b2e0bd'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
