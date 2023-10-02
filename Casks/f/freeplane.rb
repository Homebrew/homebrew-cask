cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.11.7"
  sha256 arm:   "6e30c4a5b440a14bb9d08d587801dcb1475bb9c2d0d7244ce0124070225fb07c",
         intel: "4eac089727821b6a5bac092fa86bbb36b73a7d46b07b952bb0df3394a407e5ba"

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
