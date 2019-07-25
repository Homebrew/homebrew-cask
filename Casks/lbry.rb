cask 'lbry' do
  version '0.34.0'
  sha256 '0c787ea7b24b8b116b2c3350c1203056000b1e2f1d6e95c61a460d312bcad76e'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
