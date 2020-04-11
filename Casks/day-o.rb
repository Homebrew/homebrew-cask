cask 'day-o' do
  version '3.0.1'
  sha256 '4963f503c1e47bfa0f8bdbbbe5694d6a7242d298fb44ff68af80d42f1eaebaf9'

  url "https://shauninman.com/assets/downloads/Day-#{version.major_minor}.zip"
  name 'Day-O'
  homepage 'https://shauninman.com/archive/2020/04/08/day_o_mac_menu_bar_clock_for_catalina'

  depends_on macos: '>= :catalina'

  app "Day-#{version}/Day-O.app"

  zap trash: '~/Library/Preferences/com.shauninman.Day-O.plist'
end
