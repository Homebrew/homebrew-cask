cask 'sublime-text-3' do
  version '3103'
  sha256 '7eef51e1a344f238de2f69bb9f888e46ed9083133616249f31189db958f321b5'

  url 'https://download.sublimetext.com/Sublime%20Text%20Build%203103.dmg'
  name 'Sublime Text 3'
  homepage 'https://www.sublimetext.com/3'
  license :closed

  app 'Sublime Text.app'

  zap delete: [
                '~/Library/Application Support/Sublime Text 3',
                '~/Library/Preferences/com.sublimetext.3.plist',
                '~/Library/Caches/com.sublimetext.3',
                '~/Library/Saved Application State/com.sublimetext.3.savedState',
              ]
end
