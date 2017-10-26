cask 'bitshares' do
  version '2.0.171015'
  sha256 '5ac099fe6f1ebd63e8d40b8c972a7b8636f8d1676f30dba5e0b84c01a4cef805'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom',
          checkpoint: '03974de305239c42b1e9cb146c4934e1c43587e98a0f442fe49c422645a9bbe4'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
