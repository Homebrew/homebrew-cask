cask 'sidneys-pb' do
  version '8.1.1'
  sha256 '9f93cbcb1942b8a1b5763819dffd9e3aad6e6e3c9928b9ffefb4a4b3bb8b1cb0'

  url "https://github.com/sidneys/pb-for-desktop/releases/download/v#{version}/pb-for-desktop-#{version}.dmg"
  appcast 'https://github.com/sidneys/pb-for-desktop/releases.atom'
  name 'PB for Desktop'
  homepage 'https://github.com/sidneys/pb-for-desktop'

  app 'PB for Desktop.app'

  zap trash: [
               '~/Library/Application Support/PB for Desktop',
               '~/Library/Caches/de.sidneys.pb-for-desktop',
               '~/Library/Logs/pb-for-desktop',
               '~/Library/Preferences/de.sidneys.pb-for-desktop.plist',
               '~/Library/Preferences/de.sidneys.pb-for-desktop.helper.plist',
               '~/Library/Saved Application State/de.sidneys.pb-for-desktop.savedState',
             ]
end
