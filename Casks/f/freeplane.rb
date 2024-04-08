cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.11.12"
  sha256 arm:   "79c3fa65afb7a83311f883155857e345f8b775071cd449da995336ab59e5efd5",
         intel: "e268a1b106b7212817dfb39be8dfa2b17fb3076f43590eb6349adbd417bc7648"

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
