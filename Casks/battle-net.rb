cask 'battle-net' do
  version :latest
  sha256 :no_check

  language 'en', default: true do
    url 'https://www.battle.net/download/getInstallerForGame?os=mac&locale=enUS&version=LIVE&gameProgram=BATTLENET_APP'
    homepage 'https://battle.net/'

    installer manual: 'Battle.net-Setup.app'
  end

  language 'zh', 'CN' do
    url 'https://www.battle.net/download/getInstallerForGame?os=mac&installer=Battle.net-Setup-zhCN.zip'
    homepage 'http://www.battle.net/'

    installer manual: 'Battle.net-Setup-zhCN.app'
  end

  name 'Blizzard Battle.net'

  uninstall delete: '/Applications/Battle.net.app'

  zap trash: [
               '~/Library/Preferences/net.battle.net.app.plist',
               '~/Library/Preferences/net.battle.Authenticator.prefs',
               '~/Library/Preferences/net.battle.Identity.prefs',
               '~/Library/Preferences/net.battnet.battle.plist',
               '/Users/Shared/Battle.net',
               '/Users/Shared/Blizzard',
             ],
      rmdir: '~/Blizzard'

  caveats 'If you pick an installation directory other than /Applications when installing this cask, you will need to uninstall it manually'
end
