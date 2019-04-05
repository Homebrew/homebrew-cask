cask 'blue-jeans' do
  version '2.11.1.17'
  sha256 '83e2b49f878f22ae06692afca5f16e0390821f1749ee5f080b8b01f78bd7dba7'

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
