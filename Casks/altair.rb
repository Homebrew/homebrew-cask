cask 'altair' do
  version '1.6.3'
  sha256 '776d6f5e4e67f8c92012c068607bac23f3ebdcd96658db908d6d9e6fa32fdcb5'

  # github.com/imolorhe/altair was verified as official when first introduced to the cask
  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair-#{version}-mac.zip"
  appcast 'https://github.com/imolorhe/altair/releases.atom',
          checkpoint: '01056b96ed2a2fde084d246ccb4a02f38362fc0b57b462d81b703e7aa793d545'
  name 'Altair GraphQL Client'
  homepage 'https://altair.sirmuel.design/'

  app 'altair.app'

  zap trash: [
               '~/Library/Application Support/altair',
               '~/Library/Preferences/com.electron.altair.helper.plist',
               '~/Library/Preferences/com.electron.altair.plist',
               '~/Library/Saved Application State/com.electron.altair.savedState',
             ]
end
