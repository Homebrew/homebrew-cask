cask 'lbry' do
  version '0.20.0'
  sha256 'd67d6d44e4f30df1a3050a3228a9c0e656d4d1bfb87d30f7697b5fe13a4d3b16'

  # github.com/lbryio was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
