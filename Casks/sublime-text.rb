cask 'sublime-text' do
  version '3128'
  sha256 '7d169cd511f1494e2f12657a48efd1afeee15058fcc11565cd774562caffecee'

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
