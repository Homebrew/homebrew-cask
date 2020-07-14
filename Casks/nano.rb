cask 'nano' do
  version '21.1'
  sha256 '845fe8cfc19269b929880842796adbf1ba1a055bec859ce9ca9fe095cb156320'

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
