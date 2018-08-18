cask 'bitshares' do
  version '2.0.180814'
  sha256 '70d9451f0f3b44576205710f37e20143b7e91be09c00af43d33bf7c96b895717'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
