cask "crystalmaker" do
  version "10.6.0,46910"
  sha256 :no_check

  url "http://crystalmaker.com/downloads/crystalmaker_mac.zip"
  appcast "http://crystalmaker.com/support/updates/VersionData-CMM.xml"
  name "CrystalMaker"
  desc "Visualize crystal and molecular structures"
  homepage "http://crystalmaker.com/index.html"

  depends_on macos: ">= :sierra"

  app "CrystalMaker.app"
end
