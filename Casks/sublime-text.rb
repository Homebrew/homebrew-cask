cask 'sublime-text' do
  version '3170'
  sha256 'c61af654721bd9de6b7e82db43378f583e577d8f6cfb7c1541771c64523b30f3'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/stable/appcast_osx.xml',
          checkpoint: '6801661fd5d0fa4d25218b42d3bbbf945ec31f294d52d48642b8b0c48361e08e'
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
