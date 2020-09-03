cask "jami" do
  version "20200902.2153"
  sha256 "174e1f0a3b1c26e5fefba36adc33c3f8a2e7be7a3f5e3a183e5e0c06cf65c870"

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast "https://dl.jami.net/mac_osx/sparkle-ring.xml",
          must_contain: version.no_dots
  name "Jami"
  name "Savoir-faire Linux Ring"
  homepage "https://jami.net/"

  auto_updates true

  app "Jami.app"
end
