cask 'mobile-mouse-server' do
  version '3.3.4'
  sha256 'd113c105a5ae3d20b06cd6e47354f890b06947373c726fb0f4970f3f48a4b047'

  url "http://mobilemouse.com/downloads/OS_X_Server_#{version.dots_to_underscores}.dmg"
  name 'Mobile Mouse Server'
  homepage 'http://mobilemouse.com/'

  app 'Mobile Mouse Server.app'

  uninstall quit: 'com.rpatechnology.mobilemouse'

  zap delete: [
                '/Users/tangestani/Library/Caches/com.crashlytics.data/com.rpatechnology.mobilemouse',
                '/Users/tangestani/Library/Caches/com.rpatechnology.mobilemouse',
                '/Users/tangestani/Library/Preferences/com.rpatechnology.mobilemouse.plist',
              ]
end
