cask 'hey' do
  version '1.0.4'
  sha256 'f484d461b51c4f15f776baeeb3c3ab9deceb64a14a1b976471e2784b818e68c7'

  # hey-desktop.s3.amazonaws.com was verified as official when first introduced to the cask
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
