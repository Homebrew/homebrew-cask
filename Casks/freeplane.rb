cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.11.5"
  sha256 arm:   "9a8efc3e1395e9d447906c4148c1c9a4ab5cd8a7f9083c0ec555cdf89d5a56cd",
         intel: "ff28faea567b8fef490ff2527b31fe34e97ec1661296d2c59b0e4306b87a6fe4"

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
