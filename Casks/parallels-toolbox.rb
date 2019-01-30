cask 'parallels-toolbox' do
  version '3.1.0-2206'
  sha256 '0008a13c74eb44d7a889ffca1afe23d9809a4ccc4aaad5487b0b12e894a29c14'

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
