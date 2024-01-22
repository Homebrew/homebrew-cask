cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.11.10"
  sha256 arm:   "59ab21169a7422097a4f9b347c8bdb69e36237d279b2732f21482422f623a9ba",
         intel: "d9d638827adffbb8a2863934ab7953e675dbef34061f7e3ac3f78ba154d3369a"

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
