cask 'bitshares' do
  version '2.0.181010'
  sha256 '2fb6b4d08f3f90ddb9dd7d193378107b561c23a95f38745233d93627d2fdf6f1'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
