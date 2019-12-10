cask 'obyte' do
  version '2.8.0'
  sha256 '77b76c63a50aa8bfd62e52be815ff1049fe9810581b8affb1b1f3ab1471f198c'

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
