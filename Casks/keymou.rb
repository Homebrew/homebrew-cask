cask 'keymou' do
  version '1.2.6'
  sha256 '5d9f74cfc915ea580b09b10db6e0170f310159e95d943910950bcc819819916c'

  url 'https://manytricks.com/download/keymou'
  appcast 'https://manytricks.com/keymou/appcast/'
  name 'Keymou'
  homepage 'https://manytricks.com/keymou/'

  auto_updates true

  app 'Keymou.app'

  zap trash: '~/Library/Preferences/com.manytricks.Keymo.plist'
end
