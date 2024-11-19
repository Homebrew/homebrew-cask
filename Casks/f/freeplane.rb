cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.12.6"
  sha256 arm:   "03cce45be596dd314e45d6c7cf31293f848d08281e4e7a9ed9245c156017149b",
         intel: "cbbf02b77cba0b40300b7b66b8b41955dd6e98c8568b1cd0a4b706eaec83070a"

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
