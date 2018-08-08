cask 'bitshares' do
  version '2.0.180808'
  sha256 '5bfde7cf0297d80c3f3eea60dfb0231696dc699c0c9fd66a73bba311ed3eab9c'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
