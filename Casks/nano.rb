cask 'nano' do
  version '18.0'
  sha256 '1b6c512449dcf87fe93f6ea4651ff80d9253567f7139c4e41f07f28e5a98d2e6'

  # github.com/nanocurrency/nano-node was verified as official when first introduced to the cask
  url "https://github.com/nanocurrency/nano-node/releases/download/V#{version}/nano-node-#{version}-Darwin.dmg"
  appcast 'https://github.com/nanocurrency/nano-node/releases.atom'
  name 'Nano'
  homepage 'https://nano.org/'

  app 'Nano.app'

  zap trash: [
               '~/Library/Preferences/net.raiblocks.rai_wallet.Nano.plist',
               '~/Library/Saved Application State/net.raiblocks.rai_wallet.savedState',
               '~/Library/RaiBlocks',
             ]
end
