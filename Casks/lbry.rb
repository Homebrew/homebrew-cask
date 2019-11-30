cask 'lbry' do
  version '0.37.2'
  sha256 '3a6c4cd1c9c752b7d0005c779c0e44468779c221ec411135806ad3f8e441e741'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
