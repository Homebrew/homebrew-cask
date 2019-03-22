cask 'lbry' do
  version '0.30.0'
  sha256 '96cd3c5b269eb43290aa40d699d756a1c9f316fadf5fe53caed01de2e7e2e5a1'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
