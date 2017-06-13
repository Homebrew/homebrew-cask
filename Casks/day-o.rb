cask 'day-o' do
  version '2.0'
  sha256 '24c64e66499bde5149d43c7b9b33b44b46ac6d136fcc4a988fd7c298aff02071'

  url "http://shauninman.com/assets/downloads/Day-#{version}.zip"
  name 'Day-O'
  homepage 'https://shauninman.com/archive/2016/10/20/day_o_2_mac_menu_bar_clock'

  app "Day-#{version}/Day-O.app"
end
