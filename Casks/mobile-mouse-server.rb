cask 'mobile-mouse-server' do
  version '3.4.0'
  sha256 'b380fe7caab689fbcdb372f0e1e291a1a089995de3219f790d205c4819ec9f62'

  url "http://mobilemouse.com/downloads/OS_X_Server_#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  name 'Mobile Mouse Server'
  homepage 'http://mobilemouse.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Mobile Mouse Server.app'

  uninstall quit: 'com.rpatechnology.mobilemouse'

  zap trash: [
               '/Users/tangestani/Library/Caches/com.crashlytics.data/com.rpatechnology.mobilemouse',
               '/Users/tangestani/Library/Caches/com.rpatechnology.mobilemouse',
               '/Users/tangestani/Library/Preferences/com.rpatechnology.mobilemouse.plist',
             ]
end
