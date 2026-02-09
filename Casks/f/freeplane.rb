cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.12.17"
  sha256 arm:   "2b3a51f084e6e7786f06c1406f8fae72892ebaf5a4d69aa662e338af366686a7",
         intel: "84da05a583980ba56dc0b572922f809b1795d5942d1339037daddde81eb72419"

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://docs.freeplane.org/"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    regex(%r{url=.*?/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
  end

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
