cask 'lbry' do
  version '0.35.0'
  sha256 '8879d070185484a924c87149d18d53419802de9b3b72ae7ab7b0bb4e17e37d8a'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
