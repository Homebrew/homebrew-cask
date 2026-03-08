cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.13.2"
  sha256 arm:   "484bf634da1e43816395eac0006a4e41cee98f259fb6eabfaf761d3c0d404220",
         intel: "8a2d23f08c2cb3728460f52fa77d2c7b08e4897dcbc03c38f4e7b6d58b893826"

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
