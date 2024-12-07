cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.12.8"
  sha256 arm:   "48d7dffa97b8f6905d967d4556d50f21cbde247cff5b744148e3fb204cb162b0",
         intel: "75d7454de1456f638f5c95d284524e67d4eb818626edfb9aebe204bfbf22f2e9"

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
