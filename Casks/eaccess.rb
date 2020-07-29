cask 'eaccess' do
  version '1.13.1'
  sha256 'c05daad636bef0c5ccc58ee75138bfc2d9da76c25af7a16664fbc9f756209546'

  url 'https://glutz.com/service/downloads/?dwnldid=97482'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://glutz.com/service/downloads/?dwnldid=97482',
          must_contain: version.dots_to_underscores
  name 'eAccess Desktop'
  homepage 'https://glutz.com/service/download/software-and-firmware/'

  app 'eAccess Desktop.app'
  binary "#{appdir}/eAccess Desktop.app/Contents/MacOS/eAccessServer"

  uninstall quit: 'com.glutz.eaccessdesktop'

  zap trash: [
               '~/Library/Caches/com.glutz.eaccessdesktop',
               '~/Library/Preferences/com.glutz.eAccess Desktop.plist',
               '~/Library/Saved Application State/com.glutz.eaccessdesktop.savedState',
             ]
end
