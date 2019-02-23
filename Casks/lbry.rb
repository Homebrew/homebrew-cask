cask 'lbry' do
  version '0.29.1'
  sha256 '23078bcb4c007efa927aecc8a00e9138bff1d1e0b533df4268c45a06280299c5'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
