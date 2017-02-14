cask 'clipbuddy' do
  version '2.10.26'
  sha256 '2825f8748e86b96af8e56b8c534052aa027b90741caaa64c679c26961f8be84b'

  url 'http://www.ondesoft.com/download/odclipbuddy_mac.dmg'
  appcast 'http://www.ondesoft.com/clipbuddy_mac/release-history.html',
          checkpoint: 'bee5f7c78116e833db494fe7157f33838716ff521d72bd7abb7233f46a57e32e'
  name 'ClipBuddy'
  homepage 'http://www.ondesoft.com/clipbuddy_mac/'

  app 'ClipBuddy.app'
end
