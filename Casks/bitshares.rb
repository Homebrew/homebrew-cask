cask 'bitshares' do
  version '2.0.180526'
  sha256 'bc8f7d9a5d21c2c032f30f065eab4fa58a870ae95c1d38dcc2245bb06c2b6a51'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
