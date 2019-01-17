cask 'lbry' do
  version '0.27.0'
  sha256 '1d326a3a8a3291d364cc8b878d748ca470dc2a6fb684f061fb6ed196b3aa4e52'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
