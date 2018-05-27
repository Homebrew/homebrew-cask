cask 'bitshares' do
  version '2.0.180526'
  sha256 'bc8f7d9a5d21c2c032f30f065eab4fa58a870ae95c1d38dcc2245bb06c2b6a51'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom',
          checkpoint: '20827331fc4a19cdb7457c605567f8308eb636c1f71e86fd1da334e3274ae4c8'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
