cask "jami" do
  version "20201106.1823"
  sha256 "4e14f2994373b16c4ed944cee6b5ba06d4844475fe36e8509ff8fa4babb19796"

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast "https://dl.jami.net/mac_osx/sparkle-ring.xml",
          must_contain: version.no_dots
  name "Jami"
  name "Savoir-faire Linux Ring"
  homepage "https://jami.net/"

  auto_updates true

  app "Jami.app"
end
