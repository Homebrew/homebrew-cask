cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.12.10"
  sha256 arm:   "dcc171a7746bebe364662ba23a22cb4ae605bcd7093474650053ae4364a5fca0",
         intel: "e2af537135f47e3662844952d216a5f01d81b19d1e43337209b4130097ed949d"

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://docs.freeplane.org/"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    regex(%r{url=.*?/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
  end

  depends_on macos: ">= :el_capitan"

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
