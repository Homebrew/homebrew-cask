cask 'sublime-text' do
  version '3176'
  sha256 '68cc4a12f30511b3e9fa45e6240f18b1963407a613d8933a57dec0fddf504aaa'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/stable/appcast_osx.xml',
          checkpoint: '853a79cf4d12c906924be0a0d4660b6606e18b02fa982966604c4fc0a981d529'
  name 'Sublime Text'
  homepage 'https://www.sublimetext.com/3'

  auto_updates true
  conflicts_with cask: 'sublime-text-dev'

  app 'Sublime Text.app'
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: 'com.sublimetext.3'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimetext.3.sfl*',
               '~/Library/Application Support/Sublime Text 3',
               '~/Library/Caches/com.sublimetext.3',
               '~/Library/Preferences/com.sublimetext.3.plist',
               '~/Library/Saved Application State/com.sublimetext.3.savedState',
             ]
end
