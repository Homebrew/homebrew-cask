cask "ankama" do
  version :latest
  sha256 :no_check

  language "en", default: true do
    desc "Discover the portal you can use to download all of Ankama's PC games"
    homepage "https://www.ankama.com/en/launcher"
    "en"
  end
  language "fr" do
    desc "Découvre le portail qui te permet de télécharger tous les jeux PC d'Ankama"
    homepage "https://www.ankama.com/fr/launcher"
    "fr"
  end
  language "es" do
    desc "Descubre el portal para descargar todos los juegos de PC de Ankama"
    homepage "https://www.ankama.com/es/lanzar"
    "es"
  end

  url "https://download.ankama.com/launcher/full/mac/"
  name "Ankama Launcher"

  depends_on macos: ">= :sierra"

  app "Ankama Launcher.app"

  uninstall quit: "Ankama Launcher"

  zap trash: [
    "~/Library/Application Support/Ankama Launcher",
    "~/Library/Preferences/com.ankama.zaap.plist",
    "~/Library/Saved Application State/com.ankama.zaap.savedState",
  ]
end
