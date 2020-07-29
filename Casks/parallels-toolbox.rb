cask 'parallels-toolbox' do
  version '3.9.1-3170'
  sha256 '2c370236ae25883b2360d61a70e194c986d974cc4052e80e8842b80a96c391f5'

  url "https://download.parallels.com/toolbox/v#{version.major}/#{version}/ParallelsToolbox-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.parallels.com/directdownload/toolbox/'
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
