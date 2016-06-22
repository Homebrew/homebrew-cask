cask 'sublime-text' do
  version '3117'
  sha256 'a8db08bfa6b3ce60d9b18861f96aadedfe2ffbcbe2b2a30c8cbc3e81aa084b97'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/stable/appcast_osx.xml',
          checkpoint: '9ba5c20ba4865329217cf88ef4e82cbebab1eae4d9f0af480052e93328da8f5a'
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
