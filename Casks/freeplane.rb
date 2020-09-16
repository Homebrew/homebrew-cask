cask "freeplane" do
  version "1.8.7"
  sha256 "d3ba92a59e8e6da79a77b5d8f3d54439d1a0faa3106f9ce765a341d477d4be9f"

  # downloads.sourceforge.net/freeplane/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/Freeplane-#{version}.dmg"
  appcast "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
  name "Freeplane"
  homepage "https://freeplane.sourceforge.io/"

  app "Freeplane.app"
end
