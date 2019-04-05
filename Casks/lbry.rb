cask 'lbry' do
  version '0.31.1'
  sha256 'cd8e0f100465ca558fd9dc5ac418ffe0e686327256fcb39cab736a666102f817'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
