cask 'castbridge' do
  version '1.0.5'
  sha256 'c04b8d8ceb9a0cf31891ea3e4bd5bc2325c8830b6665fd81dd9542798892628a'

  # s3.amazonaws.com/updates.castbridge.io was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/updates.castbridge.io/Castbridge-#{version}.dmg"
  appcast 'https://s3.amazonaws.com/updates.castbridge.io/latest-mac.json',
          checkpoint: '9f844f5c59f36bac9ab794d150c6d1302d344ce575905040f669ef6523a699e1'
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
