cask 'clocker' do
  version '1.5.1'
  sha256 'd9003079b1c2451932281afab9742943897b0b4015181cc7e1ed1c6c3651db84'

  # github.com/abhishekbanthia/Clocker was verified as official when first introduced to the cask
  url "https://github.com/abhishekbanthia/Clocker/releases/download/v#{version}/Clocker.zip"
  appcast 'https://github.com/abhishekbanthia/Clocker/blob/v1.4.1/Releases/appcast.xml',
          checkpoint: '7974dd324893c748f304e89a0e8e82531d14a21ddfa9938ce5ecff5b003605bc'
  name 'Clocker'
  homepage 'https://abhishekbanthia.com/Clocker'

  app 'Clocker.app'

  zap trash: [
                '~/Library/Preferences/com.abhishek.Clocker.plist',
                '~/Library/Preferences/com.abhishek.ClockerHelper.plist',
                '~/Library/Preferences/com.abhishek.Clocker.prefs',
              ]
end
