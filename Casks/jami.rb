cask "jami" do
  version "20200731.1728"
  sha256 "665b4830bfe7c274616cf78b64dbe5bb531bea59a440dc05a028266392442152"

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast "https://dl.jami.net/mac_osx/sparkle-ring.xml",
          must_contain: version.no_dots
  name "Jami"
  name "Savoir-faire Linux Ring"
  homepage "https://jami.net/"

  auto_updates true

  app "Jami.app"
end
