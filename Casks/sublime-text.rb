cask 'sublime-text' do
  version '3124'
  sha256 '2b7a7d2ca612b42a2ec5c78d04d981cb0dc0cc301b3d8b145dd80f4645dcdea5'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/stable/appcast_osx.xml',
          checkpoint: '54a3813be65fe47b481456e9b78f012e27be51743456d31c724fb4061475d511'
  name 'Sublime Text'
  homepage 'https://www.sublimetext.com/3'
  license :closed

  conflicts_with cask: 'caskroom/versions/sublime-text-dev'

  app 'Sublime Text.app'
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: 'com.sublimetext.3'

  zap delete: [
                '~/Library/Application Support/Sublime Text 3',
                '~/Library/Caches/com.sublimetext.3',
                '~/Library/Preferences/com.sublimetext.3.plist',
                '~/Library/Saved Application State/com.sublimetext.3.savedState',
              ]

  caveats do
    files_in_usr_local
  end
end
