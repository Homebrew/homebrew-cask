cask 'battlescribe' do
  version '2.03.18'
  sha256 '50f1a7c6815ff2a0f5b7f4f8348a59bd6798bd568035cc845980d9192be3d5bc'

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
