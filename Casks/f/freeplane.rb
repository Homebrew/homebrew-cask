cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.13.1"
  sha256 arm:   "441584615ff403b02ead081d8fcdf98a5eca1d711ca40817920fd7aa2a2038fa",
         intel: "7acf626053584b7584e36b6cde2977f5d53db535bdd33e84a92cff55dd2ba48b"

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
