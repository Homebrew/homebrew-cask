cask "jami" do
  version "20200928.1124"
  sha256 "e121db30f5640f398dbe8d781dde9ebbdce6483383e135b4f02c9bf9875cff91"

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast "https://dl.jami.net/mac_osx/sparkle-ring.xml",
          must_contain: version.no_dots
  name "Jami"
  name "Savoir-faire Linux Ring"
  homepage "https://jami.net/"

  auto_updates true

  app "Jami.app"
end
