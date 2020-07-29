cask 'hey' do
  version '1.0.5'
  sha256 '459067d929b404079f0dfee8bc384f7342a353cb4c24e9e298a623e844fcc50b'

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
