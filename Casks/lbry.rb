cask 'lbry' do
  version '0.21.4'
  sha256 '7592d6d064dbac5f92d15bb1c0f948be8aaa75891b6e84dfc7079173c613b51d'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom',
          checkpoint: '75367adee9e80b56ef798938ed19c543ba4777b7a443ede3107eae7ef69e8f3b'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
