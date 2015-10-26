cask :v1 => 'blue-jeans' do
  version :latest
  sha256 :no_check

  # Download page: https://bluejeans.com/downloads
  url 'https://swdl.bluejeans.com/desktop/mac/launchers/BlueJeansLauncher_live_152.dmg'
  name 'Blue Jeans videoconferencing'
  homepage 'https://bluejeans.com/'
  license :gratis
  depends_on :macos => '>= 10.6'

  installer :manual => 'Blue Jeans Launcher.app'
  uninstall :signal => [
                         ['TERM', 'com.bluejeans.nw.app'],
                         ['TERM', 'com.bluejeans.nw.helper']
                       ]
  uninstall :delete => '~/Applications/Blue Jeans.app'
end
