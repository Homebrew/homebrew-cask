cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.12.13"
  sha256 arm:   "0dbc3acb2fcbf2bfb606be184f81162b781e2035727db16683e43a6fd4cf9b5a",
         intel: "d488251bc6a4217a0fdbd0be38eeab7b4b8ae10281244da6429bdf5768f1bab8"

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
