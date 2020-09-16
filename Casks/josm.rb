cask "josm" do
  version "17013"
  sha256 "46eb568bfcbc2395c3be7a1167d56225ebc8bf52cf4596d80350f5ca35ebead7"

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
