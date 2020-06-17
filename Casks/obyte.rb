cask 'obyte' do
  version '3.1.0'
  sha256 '4f8e9f1115ef0c760e82c3c7e94ac267a260b542b0f463c42fc08c251ca8ece1'

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
