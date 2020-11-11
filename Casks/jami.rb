cask "jami" do
  version "20201109.1003"
  sha256 "8527730a7756a4e9aa7bc61016c316bb7c796adc19dcf511b25d789c16f66bda"

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast "https://dl.jami.net/mac_osx/sparkle-ring.xml",
          must_contain: version.no_dots
  name "Jami"
  name "Savoir-faire Linux Ring"
  homepage "https://jami.net/"

  auto_updates true

  app "Jami.app"
end
