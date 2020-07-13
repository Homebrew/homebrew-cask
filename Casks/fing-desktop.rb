cask 'fing-desktop' do
  version '2.0.0'
  sha256 'fceb7cf920214f447333e80bf7b141f67661a423eda03041bc651e3323763810'

  url 'https://get.fing.com/fing-desktop-releases/mac/Fing.dmg'
  appcast 'https://get.fing.com/fing-desktop-releases/mac/latest-mac.yml'
  name 'Fing Desktop'
  homepage 'https://www.fing.com/products/fing-desktop'

  app 'Fing.app'

  uninstall launchctl: 'com.fing.service'

  zap trash: [
               '~/Library/Application Support/Fing',
               '~/Library/Preferences/com.fing.app.plist',
               '~/Library/Saved Application State/com.fing.app.savedState',
             ]
end
