cask 'bitshares' do
  version '2.0.190424'
  sha256 'ddd5787be3d6e003de3490d7d3174eced673d42a5eb0f6d7a3889ca19e1793f9'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
