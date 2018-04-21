cask 'castbridge' do
  version '1.0.5'
  sha256 '1df0898d856e0743f0c871199c8e71847706185dacf305576cb53b4f136394c3'

  # s3.amazonaws.com/updates.castbridge.io was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/updates.castbridge.io/Castbridge-#{version}-mac.zip"
  appcast 'https://s3.amazonaws.com/updates.castbridge.io/latest-mac.json',
          checkpoint: '878a480ac7b53f0166d33a2c95da9cf0501ed75c6c6cf7241268945b232f496d'
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
