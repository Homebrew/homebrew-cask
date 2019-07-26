cask 'lbry' do
  version '0.34.1'
  sha256 'd020dd4c0a3651196195e7729de61c51093571d5561d93c38ae6d82ab747b2a0'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
