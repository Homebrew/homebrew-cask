cask 'calendar-366' do
  version '2.8.3'
  sha256 '3cb32de3a79040d522e94d8f1de23fb958030052f1ae66d9042cbf26d8ec123c'

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
