cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.11.6"
  sha256 arm:   "c7a2cfde9952b4c6df0ac9cd52b9f6611e3837612d33f12afa9808ee24e92b2a",
         intel: "eb2fede253f6b1a1976305d3d0c2af5ac945b8220ff071ceebacf1e871c6d4e1"

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
