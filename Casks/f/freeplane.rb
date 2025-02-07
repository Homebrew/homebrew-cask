cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.12.9"
  sha256 arm:   "18edf2844f92fa4feccdc4b0c5cfe131db4d63794da47a453c45c5bfa34afb69",
         intel: "bf502823fd6746c6fcd7b4f9d2c59519b2676288ffc59464b1df59ba44202525"

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
