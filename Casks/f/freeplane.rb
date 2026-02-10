cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.12.18"
  sha256 arm:   "ba43cd0a79da97596e74100c2ef4904323345b419abe683c47e043823d3b1770",
         intel: "3fce9703691389f1c3caa06a8da65473741d84c4f483085b2628c20b66aa77f8"

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
