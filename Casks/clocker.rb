cask 'clocker' do
  version '1.5.1'
  sha256 'd9003079b1c2451932281afab9742943897b0b4015181cc7e1ed1c6c3651db84'

  # github.com/abhishekbanthia/Clocker was verified as official when first introduced to the cask
  url "https://github.com/abhishekbanthia/Clocker/releases/download/v#{version}/Clocker.zip"
  appcast 'https://github.com/abhishekbanthia/Clocker/releases.atom',
          checkpoint: 'a3c5d15412fc810a77449d8a0e1fa722820f870d074c552bc628fc3137bcc7f8'
  name 'Clocker'
  homepage 'https://abhishekbanthia.com/Clocker/'

  app 'Clocker.app'

  uninstall launchctl: 'com.abhishek.ClockerHelper',
            quit:      'com.abhishek.Clocker'

  zap trash: [
               '~/Library/Application Scripts/com.abhishek.Clocker',
               '~/Library/Containers/com.abhishek.Clocker',
               '~/Library/Preferences/com.abhishek.Clocker.plist',
               '~/Library/Preferences/com.abhishek.ClockerHelper.plist',
               '~/Library/Preferences/com.abhishek.Clocker.prefs',
             ]
end
