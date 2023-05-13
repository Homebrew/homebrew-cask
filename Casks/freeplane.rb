cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.11.2"
  sha256 arm:   "d374fea199484d165f32f5f3a52c2e00e1021f4d5db9f989a2a3b71121273782",
         intel: "c068dfc2d5c45d35557bc9653fee0fd5ddc01c239a28ecc02edc26eab1761335"

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
