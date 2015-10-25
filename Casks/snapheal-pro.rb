cask :v1 => 'snapheal-pro' do
  version '1.4.980'
  sha256 'c9beb872e8639395d996a2582e37bec305c12bfbe5ca036bffc6ffd4c9654801'

  url "http://cdn.macphun.com/updates/SnaphealMacPRO/SnaphealPRONA_Distribution_v#{version.gsub('.','_')}.zip"
  appcast 'http://cdn.macphun.com/updates/SnaphealMacPRO/appcast.xml',
          :sha256 => '58c31104e33c7a557eaeaf83ee0e614012916349de19760737fdf60924c8286b'
  name 'Snapheal Pro'
  homepage 'https://macphun.com/snapheal/'
  license :commercial
  tags :vendor => 'Macphun'

  app 'Snapheal Pro.app'

  uninstall :quit => 'com.macphun.snaphealpro'

  zap :delete => [
                 '~/Library/Caches/com.macphun.snaphealpro',
                 '~/Library/Application Support/Snapheal Pro',
                 '~/Library/Preferences/com.macphun.snaphealpro.plist',
                 ]
end
