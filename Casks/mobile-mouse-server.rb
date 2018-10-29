cask 'mobile-mouse-server' do
  version '3.5.0'
  sha256 '0192e8b7546e31d73beab011c43fc98a13d42de8b1c15fb6003950da043ea39d'

  url "https://mobilemouse.com/downloads/OS_X_Server_#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  name 'Mobile Mouse Server'
  homepage 'https://mobilemouse.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Mobile Mouse Server.app'

  uninstall quit: 'com.rpatechnology.mobilemouse'

  zap trash: [
               '/Users/tangestani/Library/Caches/com.crashlytics.data/com.rpatechnology.mobilemouse',
               '/Users/tangestani/Library/Caches/com.rpatechnology.mobilemouse',
               '/Users/tangestani/Library/Preferences/com.rpatechnology.mobilemouse.plist',
             ]
end
