cask 'moxtra' do
  version :latest
  sha256 :no_check

  url 'https://www.moxtra.com/client/mac/MoxtraDesktopInstaller.dmg'
  name 'Moxtra'
  homepage 'http://moxtra.com/application/'

  auto_updates true

  app 'Moxtra.app'

  uninstall quit: 'com.moxtra.desktop'

  zap trash: [
               '~/Library/Application Support/Moxtra',
               '~/Library/Caches/com.moxtra.desktop',
               '~/Library/Preferences/com.moxtra.desktop.plist',
             ]
end
