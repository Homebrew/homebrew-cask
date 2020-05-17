cask 'battlescribe' do
  version '2.03.20'
  sha256 '4f858e184a47d42b973e7fe9cd89cce3540cfb0f7309707e3c92f92ffa8c32f8'

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
