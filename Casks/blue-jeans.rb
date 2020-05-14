cask 'blue-jeans' do
  version '2.20.0.264'
  sha256 '1fc9d7b5f28fe74beeed7c0b6e3e6ea52231b39c7bece89ea652717f44a39705'

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
