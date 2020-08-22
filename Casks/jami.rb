cask "jami" do
  version "20200821.1047"
  sha256 "a95a7945354a3f588e6d3d85df6d7a84a88360cd577975c5601636d70c4fb5e3"

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast "https://dl.jami.net/mac_osx/sparkle-ring.xml",
          must_contain: version.no_dots
  name "Jami"
  name "Savoir-faire Linux Ring"
  homepage "https://jami.net/"

  auto_updates true

  app "Jami.app"
end
