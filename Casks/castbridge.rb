cask 'castbridge' do
  version '1.0.2'
  sha256 'ec7f6134eb43ea618a5cd7cef09acc5ad4cf290097ca12fd2b6b81c0dfa9877d'

  # s3.amazonaws.com/updates.castbridge.io was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/updates.castbridge.io/Castbridge-#{version}.dmg"
  appcast 'https://s3.amazonaws.com/updates.castbridge.io/latest-mac.json',
          checkpoint: '9ceb8db09f08397e4023087d46dd514ec9404b6a6016078b490e4ae90d86bce1'
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
