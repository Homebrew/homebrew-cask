cask :v1 => 'battle-net-cn' do
  version :latest
  sha256 :no_check

  # blizzard.com is the official download host per the vendor homepage
  url 'http://www.battlenet.com.cn/download/getInstaller?os=mac&installer=Battle.net-Setup-zhCN.zip'
  name 'Battle.net'
  homepage 'http://www.battlenet.com.cn/zh/'
  license :commercial
  tags :vendor => 'Blizzard'

  installer :manual => 'Battle.net-Setup-zhCN.app'

  uninstall :delete => '/Applications/Battle.net.app'

  zap :delete => [
                  '~/Library/Preferences/net.battle.net.app.plist',
                  '~/Library/Preferences/net.battle.Authenticator.prefs',
                  '~/Library/Preferences/net.battle.Identity.prefs',
                  '~/Library/Preferences/net.battnet.battle.plist',
                  '/Users/Shared/Battle.net'
                 ]

  caveats 'If you pick an installation directory other than /Applications when installing this cask, you will need to uninstall it manually'
end
