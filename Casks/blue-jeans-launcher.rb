cask :v1 => 'blue-jeans-launcher' do
  version '1.5.2'
  sha256 '757edfba7811cbc20fd001bc9b6c8e7ec06b80578b1b01d866e7fea65da0869d'

  url "https://swdl.bluejeans.com/desktop/mac/launchers/BlueJeansLauncher_live_#{version.delete('.')}.dmg"
  name 'Blue Jeans videoconferencing'
  homepage 'https://bluejeans.com/'
  license :gratis

  installer :manual => 'Blue Jeans Launcher.app'

  uninstall :signal => [
                         ['TERM', 'com.bluejeans.nw.app'],
                         ['TERM', 'com.bluejeans.nw.helper']
                       ],
            :delete => '~/Applications/Blue Jeans.app'

  depends_on :macos => '>= 10.6'
end
