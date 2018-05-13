cask 'bitshares' do
  version '2.0.180512'
  sha256 'f51ca73b0d519d07529f5037c2a3f1e51eeb9dc7f885c3ffcd5d1b7185209d4b'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom',
          checkpoint: '28f91c92290d19b2fa100957fc99f6f5c3ad1a0f51e3ae77cfafa3f446451e27'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
