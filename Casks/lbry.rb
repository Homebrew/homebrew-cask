cask 'lbry' do
  version '0.35.1'
  sha256 '2d91e0cc7388bca1b9595235d1bd8a5f6dc875bedeb7b587a282368e26d4b033'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
