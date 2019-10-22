cask 'bitshares' do
  version '3.1.191011'
  sha256 '34394912ad29512220480a3c3a1eff2c309beb9e1b9bac1050ece40987ce8b2f'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}-mac.zip"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
