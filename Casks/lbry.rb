cask 'lbry' do
  version '0.32.1'
  sha256 '02c304e62a2687212e69e0fbfcb44ca541e30428a016864bdd857f7ed017e935'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
