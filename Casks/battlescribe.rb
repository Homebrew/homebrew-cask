cask 'battlescribe' do
  version '2.03.17'
  sha256 '5f398233ffac363a3fe23cd70b9629f001ee07d62ab47d4a5ebfc9f63590218a'

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
