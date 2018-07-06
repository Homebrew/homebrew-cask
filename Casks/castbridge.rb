cask 'castbridge' do
  version '1.0.7'
  sha256 '9cb9b74e73735c8e3dcbc95c329d1431b522d8d8c61b0e9749391665ee667b22'

  # s3.amazonaws.com/updates.castbridge.io was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/updates.castbridge.io/Castbridge-#{version}-mac.zip"
  appcast 'https://s3.amazonaws.com/updates.castbridge.io/latest-mac.json'
  name 'Castbridge'
  homepage 'https://castbridge.io/'

  app 'Castbridge.app'

  uninstall login_item: 'Castbridge',
            signal:     ['TERM', 'com.ariporad.Castbridge']

  zap trash: [
               '~/Library/Application Support/Castbridge',
               '~/Library/Preferences/com.ariporad.Castbridge.helper.plist',
               '~/Library/Preferences/com.ariporad.Castbridge.plist',
               '~/Library/Saved Application State/com.ariporad.Castbridge.savedState',
             ]
end
