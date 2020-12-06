cask "jami" do
  version "20201204.2039"
  sha256 "fdbe22ead95b8992169b9a11acd15fc9e932cde817c2c634bcbd00d3eb4b21db"

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast "https://dl.jami.net/mac_osx/sparkle-ring.xml",
          must_contain: version.no_dots
  name "Jami"
  name "Savoir-faire Linux Ring"
  homepage "https://jami.net/"

  auto_updates true

  app "Jami.app"
end
