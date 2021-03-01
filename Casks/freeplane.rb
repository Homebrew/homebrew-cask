cask "freeplane" do
  version "1.8.11"
  sha256 "5f558640e8811c0d4b515dfc67c4d9ef5d877dfb3b7c88a3578d97001f6b337a"

  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/Freeplane-#{version}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
  appcast "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://freeplane.sourceforge.io/"

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
