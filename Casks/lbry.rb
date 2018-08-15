cask 'lbry' do
  version '0.24.0'
  sha256 '83bc3b4f36c70a2da6eb3af1ceeb6d971e6396ec038a8ff7498b243484657f5d'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
