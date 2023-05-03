cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.11.1"
  sha256 arm:   "ad12e2051fed5b9a4f3dbfbf5ce9152cb6e5dde88eea08f3411f5420e70cf6cc",
         intel: "8bf02984e30d9baa7ee2c23e264d8e8229a6dd95dcf00862326ef059db15167b"

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
