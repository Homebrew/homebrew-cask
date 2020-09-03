cask "crystalmaker" do
  version "10.5.4"
  sha256 "42457bcf3708bf45c5a00661ebab33081c86104442cd17163e8f816e9af5c324"

  url "http://crystalmaker.com/downloads/crystalmaker_mac.zip"
  appcast "http://crystalmaker.com/crystalmaker/release-notes/mac/#{version.major}/index.html"
  name "CrystalMaker"
  homepage "http://crystalmaker.com/index.html"

  app "CrystalMaker.app"
end
