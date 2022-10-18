cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.10.4"
  sha256 arm:   "63c4af9141d49a21c4efe0a523010e169cc586882119439db2de202278b72a82",
         intel: "734d835e26763f7472df3f10918ae42a3b049645dbcfc3f8418a6aac5e2e12c1"

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-verified-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://www.freeplane.org/wiki/index.php/Home"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    strategy :page_match
    regex(%r{/freeplane%20stable/Freeplane[._-]v?(\d+(?:\.\d+)+)[._-]verified(?:[._-]#{arch})?\.dmg}i)
  end

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
