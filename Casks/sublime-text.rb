cask 'sublime-text' do
  version '3132'
  sha256 'c35624d671c1730d20409b0e7d7937782e4a3560fde4de52a0c7a0e151b3dae0'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/stable/appcast_osx.xml',
          checkpoint: '34717c4ad8bc4fd51b211effcc67fb84a04acff65126a77ba9789811659cb6d6'
  name 'Sublime Text'
  homepage 'https://www.sublimetext.com/3'

  auto_updates true
  conflicts_with cask: 'caskroom/versions/sublime-text-dev'

  app 'Sublime Text.app'
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: 'com.sublimetext.3'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimetext.3.sfl',
                '~/Library/Application Support/Sublime Text 3',
                '~/Library/Caches/com.sublimetext.3',
                '~/Library/Preferences/com.sublimetext.3.plist',
                '~/Library/Saved Application State/com.sublimetext.3.savedState',
              ]
end
