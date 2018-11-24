cask 'bitshares' do
  version '2.0.181121'
  sha256 '50a49b3460e29dd678b87cdf925cee1d904b16041fa606ec7e66505ad16310ec'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
