cask 'lbry' do
  version '0.33.1'
  sha256 'ca0bf1cd04bd19ff5c7fceecf94e58fa477142f69230605ad35f0ce8bf660eb0'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
