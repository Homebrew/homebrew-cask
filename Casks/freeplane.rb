cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.10.4"
  sha256 arm:   "1eeecaf2305f2aacc595babf91fa973eba6f1250c000dbc0d2bab15e00c3ad26",
         intel: "c3a3ba64cbc0d41d35e2300158de490362601b051051fb0380f945d89462d66d"

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://www.freeplane.org/wiki/index.php/Home"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    strategy :page_match
    regex(%r{stable/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]apple)?\.dmg}i)
  end

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
