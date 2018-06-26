cask 'lbry' do
  version '0.22.0'
  sha256 'c7c7ca5c0e8e051001d8bd269867b6f4df2233453e975e2ed79076ce31a45a5c'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
