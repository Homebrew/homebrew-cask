cask "reunion" do
  version "13.0.0.201022n"
  sha256 "28f75e4a3c3b16494531065e7ccc105ba9ac3a8869678355c16f03349adb3b95"

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.dots_to_hyphens}.zip"
  appcast "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml",
          must_contain: version.dots_to_hyphens
  name "Reunion"
  homepage "https://www.leisterpro.com/"

  app "Reunion #{version.major}.app"
end
