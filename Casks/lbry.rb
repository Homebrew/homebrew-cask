cask 'lbry' do
  version '0.28.0'
  sha256 '1c1b36988b47c07ea8fee6db761b40ede6f7721bdb5bb5c62a74da7feb3cdc06'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
