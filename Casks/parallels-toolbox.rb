cask 'parallels-toolbox' do
  version '2.0.2-1213'
  sha256 '6c11c2bae46dbe7138cf48a921ca595bedec91b977153ea1908484af36d0d0eb'

  url "https://download.parallels.com/toolbox/v#{version.major}/#{version}/ParallelsToolbox-#{version}.dmg"
  name 'Parallels Toolbox'
  homepage 'https://www.parallels.com/products/toolbox/'

  installer manual: 'Install Parallels Toolbox.app'

  uninstall delete: '/Applications/Parallels Toolbox.app',
            signal: ['TERM', 'com.parallels.toolbox']

  zap delete: [
                '~/Library/Group Containers/*.com.parallels.toolbox',
                '~/Library/Logs/prl.toolbox.ceplog.log',
                '~/Library/Logs/ParallelsToolbox',
                '~/Library/Logs/prl.toolbox.ceplog.xml',
              ],
      trash:  [
                '~/Library/Application Support/com.parallels.toolbox',
                '~/Library/Preferences/com.parallels.toolbox.plist',
              ]
end
