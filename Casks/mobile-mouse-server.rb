cask 'mobile-mouse-server' do
  version '3.3.2'
  sha256 'cb20bcb4afcee39d0dfaf91caf796c413728ff7bdd5a6b2c987ac2e09bc55a8e'

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
