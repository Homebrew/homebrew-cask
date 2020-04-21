cask 'parallels-toolbox' do
  version '3.9.0-3037'
  sha256 '1de9baf07bcc3d7dec1cca602b2dd3ccc6bac99d2436c2ba36bc92fcd837e4e2'

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
