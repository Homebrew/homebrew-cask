cask 'lbry' do
  version '0.39.0'
  sha256 'c89591f216ac3d284c5003e08b8aab560b7213ebd2c43737d0f41fd146825f6c'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
