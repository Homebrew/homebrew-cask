cask "jami" do
  version "20201113.1753"
  sha256 "446991e6a15e390a141bfe1e336cadfc00ba5f9e9ba1bddce14df6c6887ecc20"

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast "https://dl.jami.net/mac_osx/sparkle-ring.xml",
          must_contain: version.no_dots
  name "Jami"
  name "Savoir-faire Linux Ring"
  homepage "https://jami.net/"

  auto_updates true

  app "Jami.app"
end
