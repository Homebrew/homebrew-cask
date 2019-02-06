cask 'lbry' do
  version '0.27.1'
  sha256 'd58255a2928ba474422748a9f924503d71c7cb177e6ef757e30e4f4c74bb2d99'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
