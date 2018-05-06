cask 'lbry' do
  version '0.21.3'
  sha256 '3008d0755491d96b07d7d7626e9033114f22aaf33f6ed8b4349396a2db79676f'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom',
          checkpoint: 'd3aef5bd098ec5054f21c483b5f2b946ebe0a599cd3d4f51fac4e138489071e2'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
