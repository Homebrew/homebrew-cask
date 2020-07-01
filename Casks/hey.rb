cask 'hey' do
  version '1.0.6'
  sha256 'd8ac5db02bf311bf1ade3a5e69a9bc587bbb56df0d2792be029071a1571c9c13'

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
