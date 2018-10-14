cask 'joshaven-winbox' do
  version '3.17'
  sha256 '4015b86a9cf1af94099827b64687c3d46f9c9cd0c6371446ee14d7a1d4fc0378'

  url "https://joshaven.com/Winbox4Mac_#{version}.dmg"
  appcast 'https://joshaven.com/resources/tools/winbox-for-mac/'
  name 'Winbox4Mac'
  homepage 'https://joshaven.com/resources/tools/winbox-for-mac/'

  app 'Winbox4Mac.app'

  zap trash: '~/Library/Preferences/WinBox*Wine.wineskin.prefs.plist'
end
