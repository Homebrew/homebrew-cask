cask 'blue-jeans-launcher' do
  version '1.6.8'
  sha256 '9f76c386659697c11752b8e0c04d40c4a07c08733a6c928bbff11210303789db'

  url "https://swdl.bluejeans.com/desktop/mac/launchers/BlueJeansLauncher_live_#{version.no_dots}.dmg"
  name 'Blue Jeans videoconferencing'
  homepage 'https://www.bluejeans.com/'

  installer manual: 'Blue Jeans Launcher.app'

  uninstall signal: [
                      ['TERM', 'com.bluejeans.nw.app'],
                      ['TERM', 'com.bluejeans.nw.helper'],
                    ],
            delete: '~/Applications/Blue Jeans.app'
end
