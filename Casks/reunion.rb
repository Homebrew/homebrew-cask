cask "reunion" do
  version "13.0.0.201029n"
  sha256 "b278d600761e8b3a73c81438bb4a4e1f5c9249de02e3ec70b50c92263053c53a"

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.dots_to_hyphens}.zip"
  appcast "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml",
          must_contain: version.dots_to_hyphens
  name "Reunion"
  homepage "https://www.leisterpro.com/"

  app "Reunion #{version.major}.app"
end
