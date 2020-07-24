cask 'lbry' do
  version '0.47.1'
  sha256 'bcaa69e8f3c12dbde7d7d3761ea78af2576d788b71f793ebd45cc702d16568b5'

  # github.com/lbryio/lbry-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
