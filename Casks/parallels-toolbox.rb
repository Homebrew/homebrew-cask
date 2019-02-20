cask 'parallels-toolbox' do
  version '3.1.1-2313'
  sha256 '0276a559c8a6ff4647280b7c832846c2f124c6c43894f70d69ced162de73be71'

  url "https://download.parallels.com/toolbox/v#{version.major}/#{version}/ParallelsToolbox-#{version}.dmg"
  name 'Parallels Toolbox'
  homepage 'https://www.parallels.com/products/toolbox/'

  installer manual: 'Install Parallels Toolbox.app'

  uninstall delete: '/Applications/Parallels Toolbox.app',
            signal: ['TERM', 'com.parallels.toolbox']

  zap trash: [
               '~/Library/Application Support/com.parallels.toolbox',
               '~/Library/Group Containers/*.com.parallels.toolbox',
               '~/Library/Logs/prl.toolbox.ceplog.log',
               '~/Library/Logs/ParallelsToolbox',
               '~/Library/Logs/prl.toolbox.ceplog.xml',
               '~/Library/Preferences/com.parallels.toolbox.plist',
             ]
end
