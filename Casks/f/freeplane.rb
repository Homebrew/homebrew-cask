cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.11.8"
  sha256 arm:   "6aae1dece672fc9fae974fc45931dc5d64148fecd957fb2f3a623c4b5160a90a",
         intel: "1802c0c881bc5829f1438d865561f4fa49b6b8e1f30b434ae8e0e4c00cbbfc93"

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
