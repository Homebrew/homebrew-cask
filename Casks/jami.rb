cask "jami" do
  version "20200910.2202"
  sha256 "a5d826ccb8f90f4e6f3bc8e9c123e57a194e213e491936e8b2e445e5ca02d4e1"

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast "https://dl.jami.net/mac_osx/sparkle-ring.xml",
          must_contain: version.no_dots
  name "Jami"
  name "Savoir-faire Linux Ring"
  homepage "https://jami.net/"

  auto_updates true

  app "Jami.app"
end
