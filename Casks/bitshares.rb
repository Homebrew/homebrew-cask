cask 'bitshares' do
  version '2.0.181129'
  sha256 '4c2d59227829d65e27d3b59bd4bd0f56c9a0f8bd90e01bc2cbae7f9a91db4da9'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
