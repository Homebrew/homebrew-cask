cask 'clipbuddy' do
  version :latest
  sha256 :no_check

  url 'http://www.ondesoft.com/download/odclipbuddy_mac.dmg'
  appcast 'http://www.ondesoft.com/clipbuddy_mac/release-history.html',
          checkpoint: 'bee5f7c78116e833db494fe7157f33838716ff521d72bd7abb7233f46a57e32e'
  name 'ClipBuddy'
  homepage 'http://www.ondesoft.com/clipbuddy_mac/'

  depends_on macos: '>= :snow_leopard'

  app 'ClipBuddy.app'
end
