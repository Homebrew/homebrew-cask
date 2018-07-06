cask 'lbry' do
  version '0.22.1'
  sha256 '150374be6cf21b96b48897a810b61af1af24e234b691a9459a027b5fcb9a7bda'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
