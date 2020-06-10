cask 'battlescribe' do
  version '2.03.21'
  sha256 '2d89e5d84b6c321db9ff46f73486e40dc93209efefb7ee663158d840831667bc'

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.pkg"
  appcast 'https://battlescribe.net/?tab=downloads'
  name 'BattleScribe'
  homepage 'https://battlescribe.net/'

  pkg "BattleScribe_#{version}_Installer.pkg"

  uninstall pkgutil: [
                       'net.battlescribe.desktop.dataeditor',
                       'net.battlescribe.desktop.dataindexer',
                       'net.battlescribe.desktop.jre',
                       'net.battlescribe.desktop.rostereditor',
                     ],
            delete:  [
                       '/Applications/BattleScribe Tools/',
                       '/Applications/BattleScribe.app',
                     ]
end
