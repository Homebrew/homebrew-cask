cask "dofus-retro" do
  version :latest
  sha256 :no_check

  language "fr" do
    desc "Jouez à DOFUS Retro pour voir comment la légende a commencé !"
    homepage "https://www.dofus.com/fr/mmorpg/telecharger"
    "fr"
  end
  language "es" do
    desc "¡Juega a DOFUS Retro para ver cómo empezó la leyenda!"
    homepage "https://www.dofus.com/es/mmorpg/descargar"
    "es"
  end
  language "de" do
    desc "Spielt DOFUS Retro und erlebt, wie die Legende begann!"
    homepage "https://www.dofus.com/de/mmorpg/download"
    "de"
  end
  language "it" do
    desc "Gioca a DOFUS Retro per vedere come è iniziata la leggenda!"
    homepage "https://www.dofus.com/it/mmorpg/download"
    "it"
  end
  language "pt" do
    desc "Jogue DOFUS Retro para ver como a lenda começou!"
    homepage "https://www.dofus.com/pt/mmorpg/baixar"
    "pt"
  end
  language "en", default: true do
    desc "Play DOFUS Retro to see how the legend began!"
    homepage "https://www.dofus.com/en/mmorpg/download"
    "en"
  end

  url "https://dofusretro.cdn.ankama.com/installers/release/dofus-retro-mac64.tar.gz",
      verified: "dofusretro.cdn.ankama.com/"
  name "Dofus Retro"

  depends_on macos: ">= :yosemite"

  app "Dofus Retro.app"

  uninstall quit: "Dofus Retro"

  zap trash: [
    "~/Library/Application Support/Dofus Retro",
    "~/Library/Preferences/com.dofus.d1elauncher.plist",
    "~/Library/Application Support/zaap/repositories/production/dofus",
    "~/Library/Saved Application State/com.dofus.d1elauncher.savedState",
  ]
end
