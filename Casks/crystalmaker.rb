cask "crystalmaker" do
  version "10.5.5"
  sha256 "bade80e82e0c31143e32030f27e182947e3a4663e20393a42cdf0557d99a0112"

  url "http://crystalmaker.com/downloads/crystalmaker_mac.zip"
  appcast "http://crystalmaker.com/crystalmaker/release-notes/mac/#{version.major}/index.html"
  name "CrystalMaker"
  homepage "http://crystalmaker.com/index.html"

  app "CrystalMaker.app"
end
