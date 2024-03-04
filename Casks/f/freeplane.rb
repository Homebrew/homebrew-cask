cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.11.11"
  sha256 arm:   "78e32f567b6014a6adbc6bf3318f9a1e81114fe97494d3cf829b9d7d38b3c8a4",
         intel: "3b0ef1e5ab3a90127eb30750ff97fcf8ef2f99abde006c1faa57b93d0f2342c3"

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
