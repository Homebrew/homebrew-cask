cask 'obyte' do
  version '3.0.3'
  sha256 'c5dd6ce93defc9a6f3b0a4fa33f6410cdd86c561a5c3b02033bbd95a13502ebd'

  # github.com/byteball/obyte-gui-wallet/ was verified as official when first introduced to the cask
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
