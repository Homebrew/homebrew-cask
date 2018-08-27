cask 'bitshares' do
  version '2.0.180815'
  sha256 'a05731fd1e89a6ec76f28c66b1b0cc3ad53a2c7947588592d6e4319f2a16abd9'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
