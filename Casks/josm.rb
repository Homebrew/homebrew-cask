cask "josm" do
  version "17084"
  sha256 "e10ed32bb193fbf086359522828d33354f5d0e8d8d01435834ed4aa835c9a2ed"

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  appcast "https://josm.openstreetmap.de/"
  name "JOSM"
  desc "Extensible editor for OpenStreetMap"
  homepage "https://josm.openstreetmap.de/"

  app "JOSM.app"

  zap trash: [
    "~/Library/Preferences/JOSM",
    "~/Library/Caches/JOSM",
    "~/Library/JOSM",
  ]

  caveats do
    depends_on_java "8+"
  end
end
