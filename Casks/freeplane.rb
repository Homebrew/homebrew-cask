cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.10.3"
  sha256 arm:   "7ba4dbf56cb1f62c55ffde17f6c979f07ba403bdb6a33e26f10768248009ad84",
         intel: "841a337c1b291920e177e3f37992aa932c7859a12d9237a0c372124c8159fae3"

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://www.freeplane.org/wiki/index.php/Home"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    strategy :page_match
    regex(%r{stable/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]apple)?\.dmg}i)
  end

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
