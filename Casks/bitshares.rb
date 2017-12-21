cask 'bitshares' do
  version '2.0.171205'
  sha256 'cd55231877860860938fbdbca7b788feb2f711638ba03dc8fc11361fcece92a5'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom',
          checkpoint: '897827f7f4efc6c97ae73eb1448dfff1aba43c1ea33a12d578bc5bff0f557674'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
