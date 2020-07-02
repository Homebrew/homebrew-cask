cask 'hey' do
  version '1.0.8'
  sha256 '214ee981bc0c6383984231294697985d21f12a18df0272690805c0bf0454460d'

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
