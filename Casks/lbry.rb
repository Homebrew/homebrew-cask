cask 'lbry' do
  version '0.46.2'
  sha256 'fd64bd1aae3a19d141dd4b1e2257b09c0b2cb9beda0560bc39e989d5d6554f12'

  # github.com/lbryio/lbry-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
