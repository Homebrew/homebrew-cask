cask 'parallels-toolbox' do
  version '2.5.1-1406'
  sha256 'c6afc9a2c624d2c298ed37fda840b13782d8858dcf671076d9b37c7a3a9859ce'

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
