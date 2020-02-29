cask 'obyte' do
  version '3.0.1'
  sha256 '8bef1843f0d250bd9935b9e20715ba98599b135aa4bf76d7cf7dfca1aea89652'

  # github.com/byteball/obyte-gui-wallet was verified as official when first introduced to the cask
  url "https://github.com/byteball/obyte-gui-wallet/releases/download/v#{version}/Obyte-osx64.dmg"
  appcast 'https://github.com/byteball/obyte-gui-wallet/releases.atom'
  name 'Obyte'
  homepage 'https://obyte.org/'

  app 'Obyte.app'

  zap trash: [
               '~/Library/Application Support/obyte',
               '~/Library/Caches/obyte',
               '~/Library/Preferences/com.nw-builder.obyte.plist',
               '~/Library/Saved Application State/com.nw-builder.obyte.savedState',
             ]
end
