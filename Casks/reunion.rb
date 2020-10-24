cask "reunion" do
  version "13.0.0.201022n"
  sha256 "f5461c2f2f9335ff17ced876cccd73073267b9da439430a04f899ec5441e70f8"

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.dots_to_hyphens}.zip"
  appcast "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml",
          must_contain: version.dots_to_hyphens
  name "Reunion"
  homepage "https://www.leisterpro.com/"

  app "Reunion #{version.major}.app"
end
