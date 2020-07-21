cask 'hey' do
  version '1.0.9'
  sha256 '3310786e594494427d9414b78805bc06cb4d0d97ca6fb9ce2a907543ab0e96b1'

  # hey-desktop.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://hey-desktop.s3.amazonaws.com/HEY-#{version}.dmg"
  appcast 'https://hey-desktop.s3.amazonaws.com/latest-mac.yml'
  name 'Hey'
  homepage 'https://hey.com/'

  app 'Hey.app'

  zap trash: [
               '~/Library/Application Support/HEY',
               '~/Library/Preferences/com.hey.app.desktop.plist',
             ]
end
