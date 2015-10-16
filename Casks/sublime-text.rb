cask :v1 => 'sublime-text' do
  version '2.0.2'
  sha256 '906e71e19ae5321f80e7cf42eab8355146d8f2c3fd55be1f7fe5c62c57165add'

  # rackcdn.com is the official download host per the vendor homepage
  url "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20#{version}.dmg"
  appcast 'https://www.sublimetext.com/updates/2/stable/appcast_osx.xml',
          :sha256 => 'e11769f18c577d4cb189c6f6485119a66db5e5d3ba4df99326080f193c1f74b3'
  name 'Sublime Text'
  homepage 'https://www.sublimetext.com/2'
  license :closed

  app 'Sublime Text 2.app'
  binary 'Sublime Text 2.app/Contents/SharedSupport/bin/subl'

  zap :delete => [
                  '~/Library/Application Support/Sublime Text 2',
                  '~/Library/Preferences/com.sublimetext.2.plist',
                  '~/Library/Caches/com.sublimetext.2',
                  '~/Library/Saved Application State/com.sublimetext.2.savedState'
                 ]

  caveats do
    files_in_usr_local
  end
end
