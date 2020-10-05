cask "freeplane" do
  version "1.8.8"
  sha256 "f156bbafce2b6f23ceb770d55fb09b4d35d0fe98416ca688867ac95e02c881a1"

  # downloads.sourceforge.net/freeplane/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/Freeplane-#{version}.dmg"
  appcast "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
  name "Freeplane"
  homepage "https://freeplane.sourceforge.io/"

  app "Freeplane.app"
end
