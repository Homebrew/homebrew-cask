cask 'bitshares' do
  version '2.0.180306'
  sha256 '4ddfb8ee7ba2ff5c8684bfb952d94a9cd9f6190f3a3b8f707a44bf276752732f'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom',
          checkpoint: 'c1788e76969824ee4973ca8b2d283a42e9f91d0922417792d29162efe845b576'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
