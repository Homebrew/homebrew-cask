cask 'bitshares' do
  version '2.0.181212'
  sha256 '08251bca6df17bf4082557f939bc484f50a48ad28384421f26e9777ccc3540ea'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
