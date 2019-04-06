cask 'joshaven-winbox' do
  version '3.18'
  sha256 'ba9d20ab9dc5703c5e3b118f0d080a85110dd9b3ae3daa6c0ec76bb366d74bbc'

  url "http://joshaven.com/Winbox4Mac_3.18#{version}.zip"
  appcast 'https://joshaven.com/resources/tools/winbox-for-mac/'
  name 'Winbox4Mac'
  homepage 'https://joshaven.com/resources/tools/winbox-for-mac/'

  app 'Winbox4Mac.app'

  zap trash: '~/Library/Preferences/WinBox*Wine.wineskin.prefs.plist'
end
