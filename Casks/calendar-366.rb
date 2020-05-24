cask 'calendar-366' do
  version '2.8.5'
  sha256 '6472f3896775422848956e9a22acdaf150232f76c6d76f5a32e9ab2071098264'

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
