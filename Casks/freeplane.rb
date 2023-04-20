cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.10.6"
  sha256 arm:   "ccc42bd931bb31886f543e7afa6a37c0b65883df2f05dc85dd4b5e846b706f8c",
         intel: "9c172b2c11250224dbc4efc6c6fe1adfbec20fc879b5d8e73603bfe99afb5cb7"

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
