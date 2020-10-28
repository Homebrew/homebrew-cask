cask "jami" do
  version "20201022.1054"
  sha256 "bc5d66b4cdb2d2d8a63be1ca3b252b91d51a81125385691ca655c49fdba7f275"

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast "https://dl.jami.net/mac_osx/sparkle-ring.xml",
          must_contain: version.no_dots
  name "Jami"
  name "Savoir-faire Linux Ring"
  homepage "https://jami.net/"

  auto_updates true

  app "Jami.app"
end
