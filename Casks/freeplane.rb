cask "freeplane" do
  version "1.8.10"
  sha256 "bf68aa48c856c6eb188105f596d9ab28ea31abf3a99ad29fb5c5e1a6c76938bd"

  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/Freeplane-#{version}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
  appcast "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://freeplane.sourceforge.io/"

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
