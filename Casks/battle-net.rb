cask :v1 => 'battle-net' do
  version :latest
  sha256 :no_check

  url 'http://dist.blizzard.com/downloads/bna-installers/322d5bb9ae0318de3d4cde7641c96425/retail.1/Battle.net-Setup-enUS.zip'
  homepage 'http://us.battle.net/en/'
  license :commercial
  tags :vendor => 'Blizzard'

  installer :manual => 'Battle.net-Setup-enUS.app'

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
