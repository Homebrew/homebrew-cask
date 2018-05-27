cask 'relay' do
  version '1.0.0'
  sha256 '122e6d8ed1ddbeab4c914f527e9460d2fadbce378802f6d43ebad7d6701b7adb'

  # dl-getrelay-com.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://dl-getrelay-com.s3.amazonaws.com/desktop/Relay-#{version}.dmg"
  name 'Relay'
  homepage 'https://getrelay.com/'

  app 'Relay.app'

  zap trash: [
               '~/Library/Application Support/Relay',
               '~/Library/Caches/Relay',
               '~/Library/Caches/com.getrelay-desktop',
               '~/Library/Preferences/com.getrelay-desktop.plist',
               '~/Library/Saved Application State/com.getrelay-desktop.savedState',
             ]
end
