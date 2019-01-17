cask 'blue-jeans' do
  version '2.10.0.218'
  sha256 '3f7fb9fb7c6e9099f3acf4085a8734f6463edf39fdb80ae8b7ef67aab7bdb6b6'

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
