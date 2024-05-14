cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.11.14"
  sha256 arm:   "ff00170a72459ca86b5f6bac432b43f82781ccdddef70765596c5fa8cc88e57e",
         intel: "c3fa615ef95fd369f80f3b1da7d6afd43ab8d5263fb2a990a0bcfa702829487d"

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
