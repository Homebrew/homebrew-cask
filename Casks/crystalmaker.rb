cask "crystalmaker" do
  version "10.6.0"
  sha256 "dc5319baf5612703916cdb07668d0802ddb2d580c761592fc245ba7d4b52f516"

  url "http://crystalmaker.com/downloads/crystalmaker_mac.zip"
  appcast "http://crystalmaker.com/crystalmaker/release-notes/mac/#{version.major}/index.html"
  name "CrystalMaker"
  desc "Visualize crystal and molecular structures"
  homepage "http://crystalmaker.com/index.html"

  depends_on macos: ">= :sierra"

  app "CrystalMaker.app"
end
