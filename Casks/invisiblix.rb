cask "invisiblix" do
  version "3.2"
  sha256 "528328a0e7c3f0a72e763ea766324d491dfe20d6f18a2882eefda1a5a2c4d68e"

  # sourceforge.net/invisiblix/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/invisiblix/invisibliX-#{version}.zip"
  appcast "https://invisiblix.read-write.fr/appcast.xml"
  name "invisibliX"
  desc "Allows viewing and manipulation of hidden files in Finder"
  homepage "https://invisiblix.read-write.fr/"

  app "invisibliX.app"
end
