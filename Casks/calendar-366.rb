cask 'calendar-366' do
  version '2.8.1'
  sha256 'dc3892414e2603634f4f313af86525221708c6a98ce1c9fe7f1ba4747ac029e7'

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
