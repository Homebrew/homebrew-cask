cask 'airy' do
  version '3.3.179'
  sha256 '350be437a10841479407e3165415bedbce3aa3e130613aaa6bc4706d4b47b597'

  url 'https://cdn.eltima.com/download/airy.dmg'
  appcast 'https://cdn.eltima.com/download/airy-update/airy.xml',
          checkpoint: '4954abf1071c93038849c42b0ab8dd026283d47355469f8de0ea561c1b8ce06e'
  name 'Airy'
  homepage 'https://mac.eltima.com/youtube-downloader-mac.html'

  app 'Airy.app'

  uninstall quit: 'com.eltima.Airy'

  zap trash: '~/Library/Preferences/com.eltima.Airy.plist'
end
