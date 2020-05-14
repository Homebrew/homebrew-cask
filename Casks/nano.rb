cask 'nano' do
  version '20.0'
  sha256 'b770c78e7bbce29604b9d83edf36498319b3d568f1d1a9132acdb004f3e20ce4'

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
