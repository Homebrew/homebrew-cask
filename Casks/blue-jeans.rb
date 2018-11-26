cask 'blue-jeans' do
  version '2.8.1.80'
  sha256 'fc95742ddbd3814c203d691052792db5c75fbeba7c354195837338cffd09606d'

  url "https://swdl.bluejeans.com/desktop-app/mac/#{version.major_minor_patch}/#{version}/BlueJeansInstaller.dmg"
  name 'Blue Jeans videoconferencing'
  homepage 'https://www.bluejeans.com/'

  installer manual: 'BlueJeansInstaller.app'

  uninstall signal: [
                      ['TERM', 'com.bluejeansnet.Blue'],
                      ['TERM', 'com.bluejeansnet.BlueMenulet'],
                    ],
            delete: '/Applications/Blue Jeans.app'
end
