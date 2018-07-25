cask 'lbry' do
  version '0.23.0'
  sha256 '7cf9094e0511dc07d74a4a59321150aba3af6fc4c2c5e8dcfcd174012e46a879'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
