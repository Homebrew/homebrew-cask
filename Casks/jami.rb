cask "jami" do
  version "20201002.1701"
  sha256 "4d3f253c1a404d8077ac669bc3d9960629e46f3d9f3e0528a209b51b15d9daf6"

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast "https://dl.jami.net/mac_osx/sparkle-ring.xml",
          must_contain: version.no_dots
  name "Jami"
  name "Savoir-faire Linux Ring"
  homepage "https://jami.net/"

  auto_updates true

  app "Jami.app"
end
