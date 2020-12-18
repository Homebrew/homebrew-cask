cask "reunion" do
  version "13.0.0.201127n"
  sha256 "abf97ecb9758d7ae6919dca19b9583392a3f9ff6d5f493dcd2d620553d3e30ed"

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.dots_to_hyphens}.zip"
  appcast "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml",
          must_contain: version.dots_to_hyphens
  name "Reunion"
  homepage "https://www.leisterpro.com/"

  app "Reunion #{version.major}.app"
end
