cask 'bitshares' do
  version '2.0.171121'
  sha256 'bf31558becacb9129aa026d75bf9abed11f72df527812582df0467587e74648c'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom',
          checkpoint: '81efea8fca25cc2c87cf8fdd5f4e9c2506352008786892881f19b02307d50c08'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
