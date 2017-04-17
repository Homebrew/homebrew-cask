cask 'sublime-text-3' do
  version '3083'
  sha256 'fe6dd8d8192fdb01988f99289e5bc1d9a4e66cf67548e144002051c23369a5ff'

  # rackcdn.com is the official download host per the vendor homepage
  url "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/3/stable/appcast_osx.xml',
          :sha256 => '3e72a8db0cbef96c6d9884f145787f0e1ef07a89846889d61a6a3257464a29fa'
  name 'Sublime Text 3 Beta'
  homepage 'https://www.sublimetext.com/3'
  license :closed

  app 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'

  zap :delete => [
                  '~/Library/Application Support/Sublime Text 3',
                  '~/Library/Preferences/com.sublimetext.3.plist',
		  '~/Library/Caches/com.sublimetext.3',
                  '~/Library/Saved Application State/com.sublimetext.3.savedState'
                 ]

end
