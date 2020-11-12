cask "reunion" do
  version "13.0.0.201110n"
  sha256 "101e6d8d760e263ac2abb3d33475577ad7719eb1df1458987dafe7f6512234b5"

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.dots_to_hyphens}.zip"
  appcast "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml",
          must_contain: version.dots_to_hyphens
  name "Reunion"
  homepage "https://www.leisterpro.com/"

  app "Reunion #{version.major}.app"
end
