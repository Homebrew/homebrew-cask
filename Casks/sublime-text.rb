cask 'sublime-text' do
  version '3143'
  sha256 '952f81f79efb1a0a103fe87328af6a0dd8adf64e16636ecb221e79e453564b6c'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/stable/appcast_osx.xml',
          checkpoint: 'cf1732de74c0ef572bb401b068bbf563e39c475078fb8d9f33a337b87c488e11'
  name 'Sublime Text'
  homepage 'https://www.sublimetext.com/3'

  auto_updates true
  conflicts_with cask: 'caskroom/versions/sublime-text-dev'

  app 'Sublime Text.app'
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: 'com.sublimetext.3'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimetext.3.sfl*',
                '~/Library/Caches/com.sublimetext.3',
                '~/Library/Saved Application State/com.sublimetext.3.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Sublime Text 3',
                '~/Library/Preferences/com.sublimetext.3.plist',
              ]
end
