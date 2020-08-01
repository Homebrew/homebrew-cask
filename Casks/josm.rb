cask "josm" do
  version "16812"
  sha256 "59517854343dc606ea9924be657efc41c6b0f5b0486c855d13d300f81fe30a6e"

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  appcast "https://josm.openstreetmap.de/"
  name "JOSM"
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
