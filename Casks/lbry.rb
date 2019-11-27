cask 'lbry' do
  version '0.37.2'
  sha256 'db7ce0c2e84f8cb1087cf45f87353deda8e472e5c5fef499d5652ccdd936a461'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
