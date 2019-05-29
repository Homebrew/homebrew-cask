cask 'obyte' do
  version '2.7.0'
  sha256 '5351fb8746d619c40f421c08cf6e9a4128257eb99128df860f957fd185767dc7'

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
