cask 'airy' do
  version '3.4,193'
  sha256 '0b56bbcbaf1184a40340f0362733957deff7385213cac97f379c0697202b0967'

  url 'https://cdn.eltima.com/download/airy.dmg'
  appcast 'https://cdn.eltima.com/download/airy-update/airy.xml',
          checkpoint: '65e47ade8fc1a51cd07eec4651450fd6a07ffc241d079970450375b6a4072cff'
  name 'Airy'
  homepage 'https://mac.eltima.com/youtube-downloader-mac.html'

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap trash: '~/Library/Preferences/com.eltima.Airy.plist'
end
