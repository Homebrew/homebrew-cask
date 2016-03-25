cask 'blue-jeans-launcher' do
  version '1.5.8'
  sha256 '0f9b668f6cbed26fee2b9174836c0a3ff56e8032be7ddc1b030decc41fe303d0'

  url "https://swdl.bluejeans.com/desktop/mac/launchers/BlueJeansLauncher_live_#{version.delete('.')}.dmg"
  name 'Blue Jeans videoconferencing'
  homepage 'https://bluejeans.com/'
  license :gratis

  depends_on macos: '>= 10.6'

  installer manual: 'Blue Jeans Launcher.app'

  uninstall signal: [
                      ['TERM', 'com.bluejeans.nw.app'],
                      ['TERM', 'com.bluejeans.nw.helper'],
                    ],
            delete: '~/Applications/Blue Jeans.app'
end
