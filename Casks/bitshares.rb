cask 'bitshares' do
  version '2.0.180629'
  sha256 '9fe27036c586c02e1ca39d582eb87a4228d0be18685b7ff2ec92e0d252cb0ecf'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
