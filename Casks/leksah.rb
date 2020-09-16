cask "leksah" do
  version "0.16.2.2-ghc-8.0.2"
  sha256 "4ab4e5245d85bfc55b6fc6f347f4abe86728bdef031d3c5e9fb40704e07cd2dc"

  url "http://www.leksah.org/packages/leksah-#{version}.dmg"
  appcast "http://www.leksah.org/packages/"
  name "Leksah"
  homepage "http://leksah.org/"

  app "Leksah.app"
end
