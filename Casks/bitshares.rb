cask 'bitshares' do
  version '2.0.180720'
  sha256 'e1f9b011d663c6303159289747fe3614c5e8def35ec91e1f5591e83bf31cf39b'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
