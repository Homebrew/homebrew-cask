cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.10.5"
  sha256 arm:   "09dea4ac7dce253302870efdfe5db055b9f1c7f1ab6fc1928968c23faba0eb91",
         intel: "f19f66a6d860d3d883a5d8800c17d5fb291a9725d3309f9e4de46fda8fc22d69"

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://www.freeplane.org/wiki/index.php/Home"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    strategy :page_match
    regex(%r{/freeplane%20stable/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
  end

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
