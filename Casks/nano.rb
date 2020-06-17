cask 'nano' do
  version '21.0'
  sha256 'd837baf8a960db6a0ee3d44263f0cd8e5a8df21cbcacd7a05c4e9c673ff766b8'

  # github.com/nanocurrency/nano-node/ was verified as official when first introduced to the cask
  url "https://github.com/nanocurrency/nano-node/releases/download/V#{version}/nano-node-V#{version}-Darwin.dmg"
  appcast 'https://github.com/nanocurrency/nano-node/releases.atom'
  name 'Nano'
  homepage 'https://nano.org/'

  depends_on macos: '>= :sierra'

  app 'Nano.app'

  zap trash: [
               '~/Library/Preferences/net.raiblocks.rai_wallet.Nano.plist',
               '~/Library/Saved Application State/net.raiblocks.rai_wallet.savedState',
               '~/Library/RaiBlocks',
             ]
end
