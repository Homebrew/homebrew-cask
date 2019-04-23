cask 'bitshares' do
  version '2.0.190423'
  sha256 'b7ce516abf809ad598c7d290245e8ea4618a20f265ec0850df9530a6ee30cca0'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
