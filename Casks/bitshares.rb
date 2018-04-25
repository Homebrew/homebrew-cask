cask 'bitshares' do
  version '2.0.180402'
  sha256 'ac1efff629fbdd97e07396c81d111276072e4d5301441d977b2b798985f40627'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom',
          checkpoint: 'af65e8b84c6d90debf210c2ba6f7627430b71065548acb8211ace92c4e2c8900'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
