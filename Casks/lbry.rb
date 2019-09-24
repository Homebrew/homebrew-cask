cask 'lbry' do
  version '0.35.6'
  sha256 '6e9d6824cfd5ee1ef683723320d5824d890585a76aeb9092f61fcabcc1ec582b'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
