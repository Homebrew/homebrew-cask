cask 'starcraft' do
  version :latest
  sha256 :no_check

  # battle.net was verified as official when first introduced to the cask
  url 'https://www.battle.net/download/getInstallerForGame?os=MAC&version=LIVE&gameProgram=STARCRAFT'
  name 'Starcraft'
  homepage 'https://starcraft.com/'

  depends_on macos: '>= :el_capitan'

  installer manual: 'StarCraft-Setup.app'

  uninstall delete: '/Applications/StarCraft'

  zap trash: [
               '~/Library/Preferences/com.blizzard.Starcraft.plist',
               '~/Library/Preferences/com.blizzard.systemsurvey.plist',
               '~/Library/Preferences/net.battle.plist',
               '/Users/Shared/Battle.net',
             ]

  caveats 'If you pick an installation directory other than /Applications when installing this cask, you will need to uninstall it manually'
end
