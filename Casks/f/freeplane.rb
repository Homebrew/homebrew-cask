cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.12.12"
  sha256 arm:   "36cdcb966900daa0b9d7dd308d2ab81a162c4832d7300462d5edc645ed50c46b",
         intel: "d723223efef3ac6a38a704b49af3869bb6f2a874e9a47c07d1370cc7f8975246"

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
