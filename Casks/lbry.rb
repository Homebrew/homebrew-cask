cask 'lbry' do
  version '0.21.6'
  sha256 '04e06ce837ea87ea3dba0e71ba89c69164de759dfe938014f9e885137980901d'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
