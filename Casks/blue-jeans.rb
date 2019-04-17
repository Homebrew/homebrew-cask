cask 'blue-jeans' do
  version '2.12.0.418'
  sha256 'ace42c28c2e91e5753fa5c9f1dcf04e331ce44831e22bb4948a17458cc1d2b05'

  url "https://swdl.bluejeans.com/desktop-app/mac/#{version.major_minor_patch}/#{version}/BlueJeansInstaller.dmg"
  appcast 'https://www.bluejeans.com/downloads'
  name 'Blue Jeans videoconferencing'
  homepage 'https://www.bluejeans.com/'

  installer manual: 'BlueJeansInstaller.app'

  uninstall signal: [
                      ['TERM', 'com.bluejeansnet.Blue'],
                      ['TERM', 'com.bluejeansnet.BlueMenulet'],
                    ],
            delete: '/Applications/Blue Jeans.app'
end
