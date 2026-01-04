cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.12.15"
  sha256 arm:   "d66ed57cf7b66fdc40f84278fb10c5e0ce7ba7c34b7705af04ed46767d7a0b68",
         intel: "61f35051272f34ba684ea469984b1a43a7fe96795ee824d190a809953e3d51db"

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://docs.freeplane.org/"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    regex(%r{url=.*?/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
  end

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
