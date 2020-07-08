cask 'calendar-366' do
  version '2.8.7'
  sha256 '3da2d8594ee42e8b7fa05ff8cc1222b029fa45da1c3376908ae5c74a3846c6f4'

  url "https://nspektor.com/downloads/Calendar366_v#{version}.dmg"
  appcast 'https://nspektor.com/downloads/Calendar366IIAsset.xml'
  name 'Calendar 366 II'
  homepage 'https://nspektor.com/calendar366/mac'

  app 'Calendar 366 II.app'

  zap trash: [
               '~/Library/Application Scripts/com.nspektor.macos.Calendar-366-II-Mini',
               '~/Library/Application Support/Calendar 366 II',
               '~/Library/Caches/com.nspektor.macos.Calendar-366-II',
               '~/Library/Preferences/com.nspektor.macos.Calendar-366-II.plist',
             ]
end
