cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.11.13"
  sha256 arm:   "b37e5ed36de03285f2052d0d6eb5f0c9b1e2fc70b6bc7052b655152be9103db1",
         intel: "fdb7041268db1198d47ad75ecbedf0453bce26c440e2c4dbe568f18e164cd4e2"

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
