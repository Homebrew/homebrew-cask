cask "crystalmaker" do
  version "10.5.5,46714"
  sha256 :no_check

  url "http://crystalmaker.com/downloads/crystalmaker_mac.zip"
  appcast "http://crystalmaker.com/crystalmaker/release-notes/mac/#{version.major}/index.html"
  name "CrystalMaker"
  homepage "http://crystalmaker.com/index.html"

  app "CrystalMaker.app"
end
