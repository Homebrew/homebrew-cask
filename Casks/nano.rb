cask 'nano' do
  version '17.1'
  sha256 '4ce51ef996b6fe49061a006ccac7a6908cb3479077fada56cd905d9cc7088e56'

  # github.com/nanocurrency/nano-node was verified as official when first introduced to the cask
  url "https://github.com/nanocurrency/nano-node/releases/download/V#{version}/nano-#{version}-Darwin.dmg"
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
