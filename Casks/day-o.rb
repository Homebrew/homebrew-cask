cask 'day-o' do
  version '3.0'
  sha256 'ace5905328106c34e488d353fb52845e807333705076bbf994175c9ffec7f108'

  url "https://shauninman.com/assets/downloads/Day-#{version}.zip"
  name 'Day-O'
  homepage 'https://shauninman.com/archive/2020/04/08/day_o_mac_menu_bar_clock_for_catalina'

  app "Day-#{version}/Day-O.app"

  zap trash: '~/Library/Preferences/com.shauninman.Day-O.plist'
end
