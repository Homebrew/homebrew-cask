cask 'battle-net' do
  version :latest
  sha256 :no_check

  language 'en', default: true do
    url 'https://www.battle.net/download/getInstallerForGame?os=mac&locale=enUS&version=LIVE&gameProgram=BATTLENET_APP'
  end

  language 'zh', 'CN' do
    url 'https://www.battle.net/download/getInstallerForGame?os=mac&installer=Battle.net-Setup-zhCN.zip'
  end

  name 'Blizzard Battle.net'
  homepage 'https://www.battle.net/'

  installer manual: 'Battle.net-Setup.app'

  uninstall delete: '/Applications/Battle.net.app'

  zap trash: [
               '~/Library/Application Support/Battle.net',
               '~/Library/Caches/net.battle.bootstrapper',
               '~/Library/Preferences/net.battle.net.app.plist',
               '~/Library/Preferences/net.battle.app.helper.plist',
               '~/Library/Preferences/net.battle.Authenticator.prefs',
               '~/Library/Preferences/net.battle.Identity.prefs',
               '~/Library/Preferences/net.battle.plist',
               '~/Library/Preferences/net.battnet.battle.plist',
               '~/Library/Saved Application State/net.battle.app.savedState',
               '/Users/Shared/Battle.net',
               '/Users/Shared/Blizzard',
             ],
      rmdir: '~/Blizzard'

  caveats <<~EOS
    If you pick an installation directory other than /Applications when installing this cask, you will need to uninstall it manually
  EOS
end
