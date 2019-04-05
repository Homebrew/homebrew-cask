cask 'bitshares' do
  version '2.0.190227'
  sha256 '05d90297a7b86075c1cc6466a63abc297c5a450ee6d882aeadc7bbd1eab8fe62'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
