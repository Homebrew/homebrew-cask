cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.11.4"
  sha256 arm:   "6dc5d30090ac279b9ab0405d48dc12867b32ab1935d42099d887a4e067a2aeed",
         intel: "b50f599e5eba56e6ad52a3aed6fb5a1abc572b32fb05303b3ec8b3040402c215"

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://www.freeplane.org/wiki/index.php/Home"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    regex(%r{/freeplane%20stable/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
    strategy :page_match
  end

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
