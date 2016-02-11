cask 'battle-net' do
  version :latest
  sha256 :no_check

  url 'http://www.battle.net/download/getInstallerForGame?os=mac&locale=enUS&version=LIVE&gameProgram=BATTLENET_APP'
  name 'Blizzard Battle.net'
  homepage 'http://us.battle.net/en/'
  license :commercial

  installer manual: 'Battle.net-Setup-enUS.app'

  uninstall delete: '/Applications/Battle.net.app'

  zap delete: [
                '~/Library/Preferences/net.battle.net.app.plist',
                '~/Library/Preferences/net.battle.Authenticator.prefs',
                '~/Library/Preferences/net.battle.Identity.prefs',
                '~/Library/Preferences/net.battnet.battle.plist',
                '/Users/Shared/Battle.net',
              ]

  caveats 'If you pick an installation directory other than /Applications when installing this cask, you will need to uninstall it manually'
end
