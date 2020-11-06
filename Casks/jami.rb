cask "jami" do
  version "20201027.1914"
  sha256 "4b04bb7f0ff931080d87024cf65c790768c9ad2180da64371b16230c3d0d21a9"

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast "https://dl.jami.net/mac_osx/sparkle-ring.xml",
          must_contain: version.no_dots
  name "Jami"
  name "Savoir-faire Linux Ring"
  homepage "https://jami.net/"

  auto_updates true

  app "Jami.app"
end
