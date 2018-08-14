cask 'blue-jeans' do
  version '2.5.1.33'
  sha256 '20914226694e4a0734d85f8de9a42bc81e7166af933016de66e0a82dd5383e89'

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
