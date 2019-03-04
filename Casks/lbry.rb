cask 'lbry' do
  version '0.29.2'
  sha256 '2069718de3b07bd0bdc4ab671811739f855c49ccb66a8b582c031c9f41765e7b'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
