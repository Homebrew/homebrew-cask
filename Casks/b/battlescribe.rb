cask "battlescribe" do
  version "2.03.21"
  sha256 "22af5f3cf03aad474fc02d9b82acaccd4cd15f0b687027fcc36be525ac547743"

  url "https://battlescribe.net/files/BattleScribe_#{version}_Installer.pkg"
  name "BattleScribe"
  desc "Army list creator for tabletop wargamers"
  homepage "https://battlescribe.net/"

  deprecate! date: "2024-11-16", because: :unmaintained

  pkg "BattleScribe_#{version}_Installer.pkg"

  uninstall pkgutil: [
              "net.battlescribe.desktop.dataeditor",
              "net.battlescribe.desktop.dataindexer",
              "net.battlescribe.desktop.jre",
              "net.battlescribe.desktop.rostereditor",
            ],
            delete:  [
              "/Applications/BattleScribe Tools/",
              "/Applications/BattleScribe.app",
            ]

  caveats do
    requires_rosetta
  end
end
