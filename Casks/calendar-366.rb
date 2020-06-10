cask 'calendar-366' do
  version '2.8.6'
  sha256 'b0f83e8e152a65d2ea5db5426153e280bebbbddc23949b8d4b734fd5f8bdbf60'

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
