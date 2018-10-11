cask 'lbry' do
  version '0.25.1'
  sha256 '5fb92b87d561cfaf0e4a9edf5dfa99f678e27718bfefc145f64c5943f4630146'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
