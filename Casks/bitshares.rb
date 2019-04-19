cask 'bitshares' do
  version '2.0.190410'
  sha256 '6069f3b61233f0b8ff5563c45bdb24e3d5f052c6d0aae851a780717fbcb26c1a'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
