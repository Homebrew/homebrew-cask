cask 'battlescribe' do
  version '2.03.19'
  sha256 '089d8764268f450d7e20a93e5bfa45bf4d1af099953b16cc0b53418ed13da085'

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
