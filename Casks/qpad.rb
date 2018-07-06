cask 'qpad' do
  version '1.0.2'
  sha256 '2680e2656e0779503c3e42b07419bf03a3f3f39e39ab82774515beed8163c275'

  url 'https://houqiming.github.io/qpad/update/qpad_mac.dmg'
  name 'HouQiming QPad Text Editor'
  homepage 'https://houqiming.github.io/qpad/'

  app 'qpad.app'

  zap trash: [
               '~/.qpad',
               '~/Library/Preferences/com.spap.qpad.plist',
               '~/Library/Saved Application State/com.spap.qpad.savedState',
             ]
end
