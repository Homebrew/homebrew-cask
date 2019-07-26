cask 'airy' do
  version '3.9,218'
  sha256 '772a8a9374a7b316a97e2990ae3bbd3d4994c9a344c4ecf7ce5dfab37a3a6027'

  url 'https://cdn.eltima.com/download/airy.dmg'
  appcast 'https://cdn.eltima.com/download/airy-update/airy.xml'
  name 'Airy'
  homepage 'https://mac.eltima.com/youtube-downloader-mac.html'

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap trash: '~/Library/Preferences/com.eltima.Airy.plist'
end
