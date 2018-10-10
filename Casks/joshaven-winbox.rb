cask 'joshaven-winbox' do
  version '3.11_FixHS'
  sha256 'cfed9f359ca2b565879d83d922768ed64e4549391757186317b15729c447142c'

  url "https://joshaven.com/Winbox4Mac_#{version}.dmg"
  appcast 'https://joshaven.com/resources/tools/winbox-for-mac/'
  name 'Winbox4Mac'
  homepage 'https://joshaven.com/resources/tools/winbox-for-mac/'

  app 'Winbox4Mac.app'

  zap trash: '~/Library/Preferences/WinBox*Wine.wineskin.prefs.plist'
end
