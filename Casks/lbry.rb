cask 'lbry' do
  version '0.36.0'
  sha256 '09ce936b1b13c05bc89a5b39950086cdade2881c4afaf2a961affa8c9eecf034'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
