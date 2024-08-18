cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.12.3"
  sha256 arm:   "5332d2a2a996e91576119e73888708507c4aeb6f5f61fa854cb20dcd876ff955",
         intel: "4da28355ee4c26f077ea7eb23ec61fb6f8cd15dc068ddab01b7843d12ac80da9"

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://docs.freeplane.org/"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    regex(%r{/freeplane%20stable/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
    strategy :page_match
  end

  depends_on macos: ">= :el_capitan"

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
