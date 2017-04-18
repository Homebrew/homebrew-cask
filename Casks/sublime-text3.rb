cask 'sublime-text3' do
  version 'Build 3103'
  sha256 '7eef51e1a344f238de2f69bb9f888e46ed9083133616249f31189db958f321b5'

  url "http://download.sublimetext.com/Sublime Text #{version}.dmg".gsub(' ', '%20')
  appcast 'https://www.sublimetext.com/updates/3/stable/appcast_osx.xml',
          checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Sublime Text'
  homepage 'https://www.sublimetext.com/3'
  license :closed

  app 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'

  zap delete: [
                '~/Library/Application Support/Sublime Text 3',
                '~/Library/Preferences/com.sublimetext.plist',
                '~/Library/Caches/com.sublimetext.3',
                '~/Library/Saved Application State/com.sublimetext.3.savedState',
              ]

  caveats do
    files_in_usr_local
  end
end
