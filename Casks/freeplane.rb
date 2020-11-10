cask "freeplane" do
  version "1.8.9"
  sha256 "00a1a162f9434b52ff61a263e95ae152eaf214102c37aef7abcba47745837bc1"

  # downloads.sourceforge.net/freeplane/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freeplane/freeplane%20stable/Freeplane-#{version}.dmg"
  appcast "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://freeplane.sourceforge.io/"

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
